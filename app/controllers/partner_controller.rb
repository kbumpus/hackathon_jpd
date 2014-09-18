class PartnerController < ApplicationController
  def all

  	response = "<root>
				<recordCount>11</recordCount>
				<result>
				<item>
				<id>42</id>
				<lib>careerbuilder.com</lib>
				<lib_type_part>Synchronized Job Board</lib_type_part>
				<lib_email>noreply@profilsoft.com</lib_email>
				</item>
				<item>
				<id>10008</id>
				<lib>CB Network</lib>
				<lib_type_part>Synchronized Job Board</lib_type_part>
				<lib_email/>
				</item>
				<item>
				<id>133</id>
				<lib>Facebook</lib>
				<lib_type_part>Social Media</lib_type_part>
				<lib_email>xx@xx.com</lib_email>
				</item>
				<item>
				<id>1</id>
				<lib>Front-Office</lib>
				<lib_type_part>Company Website</lib_type_part>
				<lib_email/>
				</item>
				<item>
				<id>20002</id>
				<lib>Jenn's Ice Cream Shop- Career Fair</lib>
				<lib_type_part>Company Website</lib_type_part>
				<lib_email>noreply@profilsoft.com</lib_email>
				</item>
				<item>
				<id>20001</id>
				<lib>Jenn's Ice Cream Shop- TN</lib>
				<lib_type_part>Company Website</lib_type_part>
				<lib_email>noreply@profilsoft.com</lib_email>
				</item>
				<item>
				<id>20004</id>
				<lib>Jenn's Ice Cream Shop-Job Posting</lib>
				<lib_type_part>Company Website</lib_type_part>
				<lib_email>noreply@profilsoft.com</lib_email>
				</item>
				<item>
				<id>20000</id>
				<lib>Jenn's Ice Cream Shoppe</lib>
				<lib_type_part>Company Website</lib_type_part>
				<lib_email>noreply@profilsoft.com</lib_email>
				</item>
				<item>
				<id>132</id>
				<lib>LinkedIn</lib>
				<lib_type_part>Social Media</lib_type_part>
				<lib_email>xx@xx.com</lib_email>
				</item>
				<item>
				<id>131</id>
				<lib>Monster</lib>
				<lib_type_part>Job boards</lib_type_part>
				<lib_email>xx@xx.com</lib_email>
				</item>
				<item>
				<id>128</id>
				<lib>Twitter</lib>
				<lib_type_part>Social Media</lib_type_part>
				<lib_email>xx@xx.com</lib_email>
				</item>
				</result>
				</root>"

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
