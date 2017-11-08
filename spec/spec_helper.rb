require "pry"

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end

def reset_controller_content
  original_content = <<-END
class UsersController < ApplicationController
end
  END

  path = File.join(File.dirname(__FILE__), "dummy", "app", "controllers", "users_controller.rb")
  File.write(path, original_content)
end
