#
# GetLeadActivities.rb
#
# Marketo REST API Sample Code
# Copyright (C) 2016 Marketo, Inc.
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
require 'rest-client'
require 'json'

#Build request URL
#Replace AAA-BBB-CCC with your Marketo instance
marketo_instance = "https://AAA-BBB-CCC.mktorest.com" 
endpoint = "/rest/v1/activities.json"
#Replace with your access token
auth_token =  "?access_token=" + "ac756f7a-d54d-41ac-8c3c-f2d2a39ee325:ab"
#Specify datetime needed as nextPageToken
since_date_time = "&nextPageToken=GIYDAOBNGEYS2MBWKQYDAORQGA5DAMBOGAYDAKZQGAYDALBQ"
#Specify activities needed
activity_type_ids = "&activityTypeIds=1&activityTypeIds=12"
#Specify leads needed ()
lead_ids="&leadIds="3446,7984"
request_url = marketo_instance + endpoint + auth_token + since_date_time + activity_type_ids + lead_ids

#Make request
response = RestClient.get request_url

#Returns Marketo API response
puts response