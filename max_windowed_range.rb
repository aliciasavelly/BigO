def mwrange(array, window_size)
  subs = array.each_cons(window_size)
  subs.map { |window| window.max - window.min }.max
end

p mwrange([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p mwrange([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p mwrange([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p mwrange([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
