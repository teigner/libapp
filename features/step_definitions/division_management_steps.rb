
Given(/^I am logged in as an administrator$/) do
end

	
When(/^I fill in the new Division form with valid data$/) do
	visit 'new_division_url'
	fill_in 'Name', with: 'Acme Division'
  click_button 'Create Division'
end

Then(/^the Division should be created$/) do
	expect(Division.find_by(name:'Acme Division')).not_to_be_nil
end

Then(/^I should be on the Division detail page$/) do
   expect(page).to have_content 'Acme Division'
end

When(/^I fill in the new Division form with invalid data$/) do
 	visit 'new_division_url'
	fill_in 'Name', with: ''
  click_button 'Create Division'
end

Then(/^I should see the new Division form again$/) do
	expect(page).to have_selector('form#new_division')
end

Then(/^I should see an error message$/) do
	expect(page).to have_selector('.flash_error')
end

Then(/^the Division should not be created$/) do
 expect(Division.find_by(name: 'Acme Division')).to be_nil
end 

