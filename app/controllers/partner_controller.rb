class PartnerController < ApplicationController
  def all
  	config = YAML.load_file('config/credentials.yml')
  	resource = RestClient::Resource.new config["domain"] + "/rest/ref/partner/", { :user => config["username"], :password => config["password"] }
  	response = resource.get

	response_json = Hash.from_xml(response)
	partner_hash = Hash.new

	response_json["root"]["result"]["item"].each { |item| 
		if partner_hash[item["lib_type_part"]].blank?
			partner_hash[item["lib_type_part"]] = Array.new
		end

		partner_hash[item["lib_type_part"]].push({ :id => item["id"], :name => item["lib"] })
	}

	@partners = Hash.new
	@partners["partners"] = partner_hash

	render json: @partners
  end
end
