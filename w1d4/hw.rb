class Stack
  def initialize
      # create ivar to store stack here!
      @stack = []
  end

  def add(el)
      # adds an element to the stack
      @stack << el
  end

  def remove
      # removes one element from the stack
      @stack.pop
  end

  def show
      # return a copy of the stack
      @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el

  end

  def dequeue
    @queue.shift

  end

  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end

  def assign(key,value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def remove(key)
    @map.reject! {|pair| pair[0] == key}
    nil
  end
end
