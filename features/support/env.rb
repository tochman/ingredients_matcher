# frozen_string_literal: true

require 'coveralls'
Coveralls.wear_merged!('rails')
require 'cucumber/rails'
require 'webmock/cucumber'

ActionController::Base.allow_rescue = false

World(FactoryBot::Syntax::Methods)

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it.'
end

chrome_options = %w[no-sandbox disable-popup-blocking disable-infobars window-size=1900,1400]
# Use auto-open-devtools-for-tabs to open dev tools if you want to use a debugger

Chromedriver.set_version '2.42'

Capybara.register_driver :selenium do |app|
  options = Selenium::WebDriver::Chrome::Options.new(
      args: chrome_options
  )
  Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      options: options
  )
end

Cucumber::Rails::Database.javascript_strategy = :truncation
WebMock.disable_net_connect!(allow_localhost: true)
Before '@api_call' do 
  stub_request(:get, /www.food2fork.com/).
  with(
    headers: {
	  'Accept'=>'*/*',
	  'Accept-Encoding'=>'gzip, deflate',
	  'Content-Type'=>'application/json',
	  'Host'=>'www.food2fork.com',
	  'User-Agent'=>'rest-client/2.0.2 (darwin17.7.0 x86_64) ruby/2.5.1p57'
    }).
  to_return(status: 200, body: Rails.root.join('features', 'support', 'fixtures', 'recipes_collection.txt').read, headers: {})
end
