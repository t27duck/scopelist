require 'bundler/setup'
Bundler.setup

require 'active_record'
require 'active_support'
require 'scopelist'

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

load File.dirname(__FILE__) + '/schema.rb'
require File.dirname(__FILE__) + '/models.rb'

RSpec.configure do |config|
  # some (optional) config here
end
