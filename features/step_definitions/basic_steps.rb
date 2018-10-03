Given("the following items exists") do |table|
    table.hashes.each do |item|
        create(:item, item)
    end
end
  
Given("I visit the landing page") do
    visit root_path
end