ENV['RAILS_ENV'] ||= 'test'
<<<<<<< HEAD
require_relative '../config/environment'
require 'rails/test_help'
=======
require_relative "../config/environment"
require "rails/test_help"
>>>>>>> 0c412f56dd0e5244fccc62284332d230098bd43d

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
