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
