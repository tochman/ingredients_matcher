Given("the following items exists") do |table|
    table.hashes.each do |item|
        create(:item, item)
    end
end
  
Given("I visit the landing page") do
    visit root_path
end

Then("I check {string}") do |option|
    check option
  end

Then("I click on {string} to get the recipe") do |link|
    click_on link
end