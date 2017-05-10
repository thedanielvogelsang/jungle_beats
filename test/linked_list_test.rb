require "../lib/linked_list"
# gem 'minitest', '~> 5.0'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
# require_relative 'linked_list'
class LinkedListTest < Minitest::Test

  def test_does_append_work
    list = LinkedList.new
    x = list.append("hello")
    assert_equal "hello", x
  end

  def test_does_head_give_nil
    list = LinkedList.new
    x = list.head
    assert_equal nil, x
  end

  def test_next_node_nil
    list = LinkedList.new
    assert_nil(list.next_node)
  end

  def test_node_within_node
    list = LinkedList.new
    list.append("help")
    x = list.append("me")
    assert_equal list.head.data, "me"
end
