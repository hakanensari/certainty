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

  def test_boolean_representation
    assert_equal true,  true.to_bool
    assert_equal false, false.to_b

    assert_equal true,  'true'.to_b
    assert_equal true,  '1'.to_b
    assert_equal false, 'FALSE'.to_b
    assert_equal false, '0'.to_b
    assert_nil   'foo'.to_b

    assert_equal true,  1.to_b
    assert_equal false, 0.0.to_b
    assert_nil   2.to_b

    assert_nil   nil.to_b
  end

  def test_conversion
    assert_equal true,  Boolean(true)
    assert_equal true,  Boolean('1')
    assert_equal false, Boolean(false)
    assert_equal false, Boolean('0')
    assert_equal nil,   Boolean('foo')
  end
end
