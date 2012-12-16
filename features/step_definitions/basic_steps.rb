Given /^I post "(.*?)" on the REST interface$/ do | message |
  post "/message/", message
end

