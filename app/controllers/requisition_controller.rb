require 'json'
require 'rest-client'


class RequisitionController < ApplicationController
  def all
  	config = YAML.load_file('config/credentials.yml')
  	resource = RestClient::Resource.new config["domain"] + "/rest/position/", { :user => config["username"], :password => config["password"] }
  	response = resource.get

	response_json = Hash.from_xml(response)
	reqs_list = Array.new

	response_json["root"]["result"]["item"].each { |item| 
		if item['Prop38']
			reqs_list.push({ :id => item['Prop37'].to_s, :name => item['Prop38'].to_s })
		else
			reqs_list.push({ :id => item['Prop37'].to_s, :name => item['Prop38.en'].to_s })
		end
	}

	@reqs = Hash.new
	@reqs["requisitions"] = reqs_list

  	render json: @reqs
  end
end
