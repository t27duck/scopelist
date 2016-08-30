require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest/autorun'
require 'minitest/pride'

require 'active_record'
require 'active_support'
require 'scopelist'

# Compatability for older MiniTest versions (ie Rails 4.0 uses MiniTest 4.7)
MiniTest::Test = MiniTest::Unit::TestCase unless defined?(MiniTest::Test)

ActiveRecord::Base.establish_connection adapter: 'sqlite3', database: ':memory:'
require 'schema'
require 'models'
