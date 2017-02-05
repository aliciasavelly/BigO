def mwrange(array, window_size)
  subs = array.each_cons(window_size)
  subs.map { |sub| sub.max - sub.min }.max
end

p mwrange([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p mwrange([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p mwrange([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p mwrange([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8

def mwrange(array, window_size)
  subs = array.each_cons(window_size)
  subs.map { |window| window.max - window.min }.max
end

window.each do |el|

  stack.enqueue(el)
  stack.min
end

class Queue

  def initialize(store = [])
    @store = store
  end

  def enqueue(el)
    @store.push(el)
    el
  end

  def dequeue
    @store.shift
  end

  def peek
    @store.dup.first
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end

class Stack

  def initialize(store = [])
    @store = store
  end

  def push(el)
    @store.push(el)
    el
  end

  def pop
    @store.pop
  end

  def peek
    @store.dup.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

end

class MinMaxStack

  def initialize(store = [])
    @store = store
  end

  def push(el)
    if empty? || el > @store.last
      @store.push(el)
    elsif el < @store.first
      @store.unshift(el)
    end
    el
  end

  def pop
    @store.pop
  end

  def peek
    @store.dup.last
  end

  def size
    @store.length
  end

  def empty?
    @store.empty?
  end

  def min
    @store.first
  end

  def max
    @store.last
  end

end

class StackQueue
  def initialize
    @in_stack = Stack.new
    @out_stack = Stack.new
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    if @out_stack.empty?
      @in_stack.size.times do |i|
        @out_stack.push(@in_stack.pop)
      end
    end
    @out_stack.pop
  end

  def size
    @in_stack.size + @out_stack.size
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

end

class MinMaxStackQueue

  def initialize(store = [])
    @store = store
  end

  def enqueue(el)
    @store.push(el)
    el
  end

  def dequeue
    @store.shift
  end

  def size
    @store.length
  end

  def empty?
    @store.length == 0
  end

  def max

  end

  def min

  end
end
