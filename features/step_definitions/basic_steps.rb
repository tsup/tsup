require 'json'

Given /^I post "(.*?)" on the REST interface$/ do | message |
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  json_message = { :content => message }
  post "/messages/", json_message.to_json
end

When /^I visit the "(.*?)" page$/ do | page |
  visit page
end

Then /^I should see "(.*?)"$/ do | text |
  page.should have_content( text )
end

