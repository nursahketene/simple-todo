Given /^I log out$/ do
  visit('/logout')
end

Given /^I have authenticated as "([^"]*)"$/ do |username|
  step %{I go to the home page}
  step %{I fill in "user_login" with "#{username}"}
  step %{I fill in "user_pass" with "test"}
  step %{I press "Login"}
end
