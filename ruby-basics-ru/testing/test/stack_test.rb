# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'
require 'minitest/autorun'

class StackTest < Minitest::Test
  # BEGIN
  def test_one
    stack = Stack.new
    assert { stack.empty? == true }
    assert { stack.to_a == [] }
    assert { stack.size == 0 }
    assert { stack.push! 'ruby' == ['ruby'] }
    assert { stack.push! 'php' == %w[ruby php] }
  end
  # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
