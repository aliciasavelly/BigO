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
