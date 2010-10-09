Given /^I create an item view$/ do
  And %{I follow "Lisää uusi näkymä"}
  And %{I fill in "item_view_name" with "2. Testinäkymä"}
  And %{I fill in "item_view_params_mod" with "GrandMa light"}
  And %{I press "Tallenna"}
end

Given /^(?:|I )expect a confirmation dialog$/ do
  page.evaluate_script('window.confirm = function() { return true; }')
end