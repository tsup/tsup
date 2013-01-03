require 'json'

Given /^I post "(.*?)" on the REST interface$/ do | message |
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  json_message = { :content => message }
  post "/messages/", json_message.to_json
end

Given /^I post "(.*?)" on the web interface$/ do | message |
  visit "/"
  fill_in 'message_content', with: "#{message}"
  click_button "Post"
end

When /^I visit the "(.*?)" page$/ do | page |
  visit page
end

Then /^I should see "(.*?)"$/ do | text |
  page.should have_content text
end

Then /^"(.*?)" should precede "(.*?)"$/ do | first_text, second_text |
  page.text.should match /#{first_text}.*#{second_text}/m
end

