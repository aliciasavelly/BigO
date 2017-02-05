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
