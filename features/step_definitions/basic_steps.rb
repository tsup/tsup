require 'json'

Given /^I post "(.*?)" on the REST interface$/ do | tsup |
  header 'Accept', 'application/json'
  header 'Content-Type', 'application/json'
  json_message = { :content => tsup }
  post "/tsups/", json_message.to_json
end

Given /^I post "(.*?)" on the web interface$/ do | tsup |
  visit "/"
  fill_in 'tsup_content', with: "#{tsup}"
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

