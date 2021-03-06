ENV['RACK_ENV'] = 'test'
require 'coveralls'
Coveralls.wear!

require File.join(File.dirname(__FILE__), '..', '..', 'lib/wtfismygenericthing.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'cucumber/api_steps'
require 'active_support/core_ext/object/blank'

Capybara.app = Wtfismygenericthing

class WtfismygenericthingWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers

  def app
    Wtfismygenericthing::App
  end
end

World do
  WtfismygenericthingWorld.new
end
