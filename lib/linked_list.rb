class Node

  def initialize(data)
    @head
    @data = data
    @next_node = nil
  end
  def append(arg)
    @head = Node.new(arg)
    @next_node = @head.object_id
    arg
  end

  def head
    @head
  end

  def data
    @data
  end

  def to_string
    x = @data
  end

  def next_node
    @head
  end
end

class LinkedList
  attr_reader :node_count

  def initialize
    @head = nil
    @node_count = Array.new
  end

  def head
    @head
  end

  def append(arg)
    @node_count.push(arg)
    if @head == nil
      @head = Node.new(arg)
    elsif @head.head == nil
      @head.append(arg)
    elsif @head.head.head == nil
      @head.head.append(arg)
    elsif @head.head.head.head == nil
      @head.head.head.append(arg)
    elsif @head.head.head.head.head == nil
      @head.head.head.head.append(arg)
    elsif @head.head.head.head.head.head == nil
      @head.head.head.head.head.append(arg)
    end
    arg
  end

  def prepend(arg)
    @node_count.insert(0, arg)
    arg
  end

  def insert(pos, val)
    @node_count.insert(pos, val)
    val
  end

  def next_node
    if @head.head == nil
      nil
    else
      @head.next_node
    end
  end

  def count
    @node_count.count
  end

  def to_string
    @node_count.join(" ")
  end

  def find(int, fin)
    @node_count[int..fin].join(" ")
  end

  def pop
    @node_count.pop
  end

  def includes?(word)
    @node_count.include?(word)
  end
end
