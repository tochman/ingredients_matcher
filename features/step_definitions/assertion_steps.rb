Then("I should see {string}") do |content|
    expect(page).to have_content content
end

Then("I should click on {string} to get the recipe") do |link|
    click_on link
  end