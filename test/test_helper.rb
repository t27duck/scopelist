$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'minitest/autorun'

require 'active_record'
require 'active_support'
require 'scopelist'

# Compatability for older MiniTest versions (ie Rails 4.0 uses MiniTest 4.7)
MiniTest::Test = MiniTest::Unit::TestCase unless defined?(MiniTest::Test)

require 'models'
