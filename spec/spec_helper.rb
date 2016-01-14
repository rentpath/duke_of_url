SPEC_DIR = File.dirname __FILE__

require 'rubygems'
require 'bundler/setup'
require 'bogus/rspec'
require 'byebug'
require 'duke_of_url'
require 'factory_girl'
require 'faker'

Dir.glob("#{SPEC_DIR}/support/**/*.rb").each {|f| require f}

Bogus.configure do |c|
  c.search_modules << DukeOfUrl
end

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
