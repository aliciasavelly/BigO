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








class StackQueue
  def initialize
    @in_stack = Stack.new
    @out_stack = Stack.new
  end

  def enqueue(el)
    @in_stack.push(el)
  end

  def dequeue
    # this creates the "flip" which you perform when
    # out_stack is empty.
    # when you dequeue, you destroy your instack,
    # by dequeing it as much as its size and quee in those
    # vals to the outstack
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




class Stack

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
