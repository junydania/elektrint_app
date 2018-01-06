Given("I visit the {string} landing page") do |admin|
  visit "/#{admin}"
end

Then(/^I should see "([^"]*)"$/) do |welcome|
  expect(page).to have_content(welcome)
end


Then(/^show page$/) do
  save_and_open_page
end

