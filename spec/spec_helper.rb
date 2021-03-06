require 'bundler/setup'
require 'frogger-logger'
require 'support/dummy_client'
require 'support/client_expectations'
require 'codeclimate-test-reporter'

CodeClimate::TestReporter.start

Bundler.setup

RSpec.configure do |config|
  config.include ClientExpectations
  config.after(:each) do
    if EM::reactor_running?
      EM::next_tick do
        EM::stop_event_loop
      end
    end
  end
end
