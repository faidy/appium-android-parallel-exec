Given(/^I Add a new note "(.*?)"$/) do |arg1|
	find_element(:id,'menu_add').click
	find_element(:id,'note').send_keys arg1
	find_element(:id,'menu_save').click
end

Given(/^I add (\d+) notes$/) do |arg1|
	num=arg1.to_i
	i=1
	while i <= num do
		find_element(:id,'menu_add').click
		find_element(:id,'note').send_keys "Note "+i.to_s
		find_element(:id,'menu_save').click
		i+=1
	end
end

Then(/^the (\d+) notes are added successfully$/) do |arg1|
	find_elements(:id,'text1').length.should eq arg1.to_i
end

Then(/^the note "(.*?)" is added successfully$/) do |arg1|
	find_elements(:id,'text1').length.should eq 1
	texts.last.text.should eq arg1
end