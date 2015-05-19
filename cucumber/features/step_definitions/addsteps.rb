Given(/^I Add a new note "(.*?)"$/) do |arg1|
find_element(:id,'menu_add').click
find_element(:id,'note').send_keys arg1
find_element(:id,'menu_save').click
end

Then(/^the note "(.*?)" is added successfully$/) do |arg1|
find_elements(:id,'text1').length.should eq 1
texts.last.text.should eq arg1
end