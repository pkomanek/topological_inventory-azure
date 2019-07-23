require "bundler/setup"

if ENV['CI']
  require 'simplecov'
  SimpleCov.start
end

require "topological_inventory/azure/collector"

RSpec.configure do |config|
  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
