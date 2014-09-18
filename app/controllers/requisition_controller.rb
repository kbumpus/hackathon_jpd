require 'json'


class RequisitionController < ApplicationController
  def all

  	response = "<root>
				<recordCount>16</recordCount>
				<page>1</page>
				<pageCount>1</pageCount>
				<result>
				<item>
				<id>61</id>
				<Prop37>000061</Prop37>
				<Prop38>Test Requisition-DO NOT APPLY</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/61/
				</link>
				<created>2014-09-15 14:11:01</created>
				<updated>2014-09-15 14:11:01</updated>
				</item>
				<item>
				<id>60</id>
				<Prop37>000060</Prop37>
				<Prop38.en>Test Requisition</Prop38.en>
				<Prop38.es></Prop38.es>
				<Prop38.fr></Prop38.fr>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/60/
				</link>
				<created>2014-08-18 22:43:16</created>
				<updated>2014-08-18 22:43:16</updated>
				</item>
				<item>
				<id>59</id>
				<Prop37>000059</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/59/
				</link>
				<created>2014-08-18 22:33:26</created>
				<updated>2014-08-18 22:33:26</updated>
				</item>
				<item>
				<id>58</id>
				<Prop37>000058</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/58/
				</link>
				<created>2014-07-31 01:10:21</created>
				<updated>2014-07-31 01:10:21</updated>
				</item>
				<item>
				<id>56</id>
				<Prop37>000056</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/56/
				</link>
				<created>2014-07-28 14:50:42</created>
				<updated>2014-07-28 14:50:42</updated>
				</item>
				<item>
				<id>55</id>
				<Prop37>000055</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/55/
				</link>
				<created>2014-07-22 14:37:48</created>
				<updated>2014-07-22 14:37:48</updated>
				</item>
				<item>
				<id>53</id>
				<Prop37>000053</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/53/
				</link>
				<created>2014-07-16 14:27:22</created>
				<updated>2014-07-16 14:27:22</updated>
				</item>
				<item>
				<id>52</id>
				<Prop37>000052</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/52/
				</link>
				<created>2014-07-16 14:06:21</created>
				<updated>2014-07-16 14:06:21</updated>
				</item>
				<item>
				<id>49</id>
				<Prop37>000049</Prop37>
				<Prop38>Test Requisition #1</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/49/
				</link>
				<created>2014-06-26 15:12:10</created>
				<updated>2014-06-26 15:12:10</updated>
				</item>
				<item>
				<id>48</id>
				<Prop37>000048</Prop37>
				<Prop38>Yet Another Test Req</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/48/
				</link>
				<created>2014-06-18 21:06:39</created>
				<updated>2014-06-18 21:06:39</updated>
				</item>
				<item>
				<id>47</id>
				<Prop37>000047</Prop37>
				<Prop38>Another Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/47/
				</link>
				<created>2014-06-18 20:55:38</created>
				<updated>2014-06-18 20:55:38</updated>
				</item>
				<item>
				<id>43</id>
				<Prop37>000043</Prop37>
				<Prop38>New Test Req.</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/43/
				</link>
				<created>2014-06-18 18:52:44</created>
				<updated>2014-06-18 18:52:44</updated>
				</item>
				<item>
				<id>40</id>
				<Prop37>000040</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/40/
				</link>
				<created>2014-06-18 14:31:59</created>
				<updated>2014-06-18 14:31:59</updated>
				</item>
				<item>
				<id>38</id>
				<Prop37>000038</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/38/
				</link>
				<created>2014-06-18 13:02:56</created>
				<updated>2014-06-18 13:02:56</updated>
				</item>
				<item>
				<id>37</id>
				<Prop37>000037</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/37/
				</link>
				<created>2014-06-16 21:08:22</created>
				<updated>2014-06-16 21:08:22</updated>
				</item>
				<item>
				<id>12</id>
				<Prop37>000012</Prop37>
				<Prop38>Test Requisition</Prop38>
				<link>
				https://ws-teamhgs.luceosolutions.com/rest/position/12/
				</link>
				<created>2014-01-20 20:35:56</created>
				<updated>2014-01-20 20:35:56</updated>
				</item>
				</result>
				</root>"

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
