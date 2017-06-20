Given(/^User navigates to the DLA\-DEMO webpage$/) do
visit FirstTestContactPage
end

When(/^User clicks on contact tab and validates the contact page is displays successfully$/) do
  on(FirstTestContactPage).contact_page

end

And(/^user fill out the text fields from the contact page and clicks on submit button$/) do
  on(FirstTestContactPage).text_field_name
  on(FirstTestContactPage).drop_down_lists

end

Then(/^user validates the data has been displayed successfully$/) do
  on(PagesDisplay).verification_page
end