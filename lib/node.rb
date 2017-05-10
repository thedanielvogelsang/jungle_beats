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
