$:.push File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'bundler/setup'

require 'boolean'
require 'test/unit'

class TestBoolean < Test::Unit::TestCase
  def test_existence
    assert_kind_of Boolean, true
    assert_kind_of Boolean, false
  end

  def test_conversion
    assert_equal true,  Boolean(true)
    assert_equal true,  Boolean('1')
    assert_equal false, Boolean(false)
    assert_equal false, Boolean('0')
    assert_equal nil,   Boolean('foo')
  end
end
