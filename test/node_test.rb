require "../lib/node"
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class NodeTest < Minitest::Test
  # def test_does_initialize_work
  #   list = Node.new(arg)
  # end

  def test_data_method
    list = Node.new("plop")
    x = list.data
    assert_equal("plop", x)
  end

  def test_next_node_nil
    list = Node.new("plop")
    assert_nil list.next_node
  end
# linked to node.rb
# upon initialize require argument
# when instance of node is given .data method, return argument ^
# when instance of node is given .next_node return nil



end
#
# > require "./lib/node"
# > node = Node.new("plop")
# > node.data
# => "plop"
# > node.next_node
# => nil
