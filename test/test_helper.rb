ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/reporters'

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  Minitest::Reporters.use!
  FactoryGirl.lint
end