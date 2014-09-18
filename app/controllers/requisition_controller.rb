require 'json'
require 'rest-client'


class RequisitionController < ApplicationController
  def all
  	page_number = 1
  	page_count = 1	
	reqs_list = Array.new

	while (page_number <= page_count) do
		response = get_reqs(page_number)
		page_number = page_number + 1
		response_json = Hash.from_xml(response)

		page_count = response_json["root"]["pageCount"].to_i unless page_count.blank?	

		response_json["root"]["result"]["item"].each { |item| 
			if item['Prop38']
				reqs_list.push({ :id => item['Prop37'].to_s, :name => item['Prop38'].to_s })
			else
				reqs_list.push({ :id => item['Prop37'].to_s, :name => item['Prop38.en'].to_s })
			end
		}
	end

	@reqs = Hash.new
	@reqs["requisitions"] = reqs_list

  	render json: @reqs
  end

  def get_reqs(page_num)
  	config = YAML.load_file('config/credentials.yml')
  	uri = "#{config['domain']}/rest/position/?params=page:#{page_num}"
  	resource = RestClient::Resource.new uri, { :user => config["username"], :password => config["password"] }

  	puts uri
  	resource.get
  end
end
