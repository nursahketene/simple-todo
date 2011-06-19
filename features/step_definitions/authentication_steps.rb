Given /^I am not authenticated$/ do
  visit('/logout')
end

Given /^I am an authenticated user$/ do
  And %{I go to the home page}
  And %{I fill in "user_login" with "mrako"}
  And %{I fill in "user_pass" with "test"}
  And %{I press "Login"}
end