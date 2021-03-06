require 'spec_helper'

describe FroggerLogger::Configuration do
  let(:configuration) { FroggerLogger::Configuration.new }

  describe '#host' do
    it 'should have mutators' do
      host = '123.123.123.123'
      configuration.host = host
      configuration.host.should eq host
    end

    it 'should have proper default value' do
      configuration.host.should eq '0.0.0.0'
    end
  end

  describe '#port' do
    it 'should have mutators' do
      configuration.port = 1234
      configuration.port.should eq 1234
    end

    it 'should have proper default value' do
      configuration.port.should eq 2999
    end
  end

  describe '#client_js_path' do
    it 'should have mutators' do
      configuration.client_js_path = '/client.js'
      configuration.client_js_path.should eq '/client.js'
    end

    it 'should have proper default value' do
      configuration.client_js_path.should eq '/assets/frogger_logger/client.js'
    end
  end

  describe '#history_expiration_time' do
    it 'should have mutators' do
      configuration.history_expiration_time = 123
      configuration.history_expiration_time.should eq 123
    end

    it 'should have proper default value' do
      configuration.history_expiration_time.should eq 600
    end
  end

  describe '#extend_with_dsl' do
    it 'should have mutators' do
      configuration.extend_with_dsl = false
      configuration.extend_with_dsl.should eq false
    end

    it 'should have proper default value' do
      configuration.extend_with_dsl.should eq true
    end
  end

  describe '#json_format' do
    it 'should have mutators' do
      json_format = false
      configuration.json_format = json_format
      configuration.json_format.should eq json_format
    end

    it 'should have proper default value' do
      configuration.json_format.should eq true
    end
  end

end
