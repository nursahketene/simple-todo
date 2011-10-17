Given /^(?:|I )expect a confirmation dialog$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
end
