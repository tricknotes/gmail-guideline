require 'bundler/setup'

Bundler.require(:default)

require 'capybara/dsl'

# Capybara.default_driver = :selenium_chrome_headless
Capybara.default_driver = :selenium_chrome

class Runner
  include Capybara::DSL

  def run
    visit 'https://support.google.com/mail/answer/81126'

    puts page.text
  end
end

Runner.new.run
