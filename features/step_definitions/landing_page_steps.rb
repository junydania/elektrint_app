Given("I visit the {string} landing page") do |admin|
  visit "/#{admin}"
end

Then(/^I should see "([^"]*)"$/) do |welcome|
  expect(page).to have_content(welcome)
end


Then(/^show page$/) do
  save_and_open_page
end

Given(/^the contractor exists with e\-mail "([^"]*)" and password "([^"]*)" and is logged in$/) do |email, password|
  steps %{
    Given I visit the landing page
    And I click link "Contractor Sign Up"
    And I fill in field "First Name" with "Bob"
    And I fill in field "Last Name" with "Jackson"
    And I fill in field "Email" with "#{email}"
    And I fill in field "Password" with "#{password}"
    And I fill in field "Password Confirmation" with "#{password}"
    And I fill in field "Company" with "Bob's Plumbing Inc"
    And I fill in field "Address" with "6107 nw 183 ln"
    And I fill in field "City" with "Miami Lakes"
    And I fill in field "State" with "Florida"
    And I fill in field "Zip Code" with "33015"
    And I fill in field "Country" with "USA"
    And I fill in field "Experience" with "This is my experience"
    And I click on "Submit"
  }
end