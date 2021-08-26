# rubocop:disable Lint/ShadowingOuterLocalVariable
require 'spec_helper'
require 'support/factory_bot'
require 'support/request_spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

Dir[Rails.root.join('spec/support/**/*.rb')].sort.each { |f| require f }
# [...]
# configure shoulda matchers to use rspec as the test framework and full matcher libraries for rails

# [...]

# [...]
RSpec.configure do |config|
  # [...]
  # add `FactoryBot` methods
  config.include FactoryBot::Syntax::Methods
  config.include RequestSpecHelper
  config.include ControllerSpecHelper
  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
  end

  # start by truncating all the tables but then use the faster transaction strategy the rest of the time.
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  # start the transaction strategy as examples are run
  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
  # [...]
end
# rubocop:enable Lint/ShadowingOuterLocalVariable
