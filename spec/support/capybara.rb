require "selenium/webdriver"

# Silent puma server http://bit.ly/2HNiv4R
Capybara.server = :puma, { Silent: true }

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :rack_test # set to :selenium(slower and witout chrome headless) or :rack_test(faster and with chrome headless)
  end
end
