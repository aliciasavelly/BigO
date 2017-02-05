require_relative 'stack.rb'

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
