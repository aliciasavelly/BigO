require 'byebug'

def my_min(arr)
  min = arr.first

  arr.each do |el1|
    arr.each do |el2|
      min = el1 if el1 < el2 && el1 < min
    end
  end

  min
end

# puts "min_min TC (n^2) time"
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min(list) == -5

def my_min2(arr)
  min = arr.first

  arr.each do |el|
    min = el if el < min
  end

  min
end

# puts "min_min2 TC (n) time"
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# puts my_min2(list) == -5

def largest_cont_subsum(arr)
  sub_arrays = []

  # Big O for this loop is n^3
  arr.each.with_index do |el1, i|
    arr.each.with_index do |el2, j|
      sub_arrays << arr[i..j] if i != j
    end
  end

  max_sum = nil

  # Big O for this loop is n^2
  sub_arrays.each do |sub_arr|
    sum = 0
    sub_arr.each do |num|
      sum += num
    end
    max_sum = sum if max_sum.nil? || sum > max_sum
  end

  # Overall this is n^3 + n^2 which reduces to n^3

  max_sum
end

# puts "largest_cont_subsum TC ()"
# list = [2, 3, -6, 7, -6, 7]
# puts largest_cont_subsum(list) == 8

def largest_cont_subsum2(arr)
  return nil if arr.empty?
  return arr[0] if arr.length == 1
  return [arr[0], arr[1], arr[0] + arr[1]].max if arr.length == 2
  return arr.max if arr.all? { |el| el <= 0 }
  max_sum = 0

  accumulated_indices = []
  i = 0
  # byebug
  while i < arr.length - 2
    if accumulated_indices.include?(i)
      i += 1
      next
    end
    two_piece = arr[i] + arr[i + 1]
    three_piece = two_piece + arr[i + 2]
    if accumulated_indices.last == i - 1
      best = [max_sum, arr[i] + max_sum, two_piece + max_sum, three_piece + max_sum].max
    else
      best = [max_sum, two_piece, three_piece, arr[i]].max
    end
    if best > max_sum
      if best == arr[i] + max_sum || best == arr[i]
        accumulated_indices << i
      elsif best == two_piece + max_sum || best == two_piece
        accumulated_indices << i
        accumulated_indices << i + 1
      elsif best == three_piece + max_sum || best == three_piece
        accumulated_indices << i
        accumulated_indices << i + 1
        accumulated_indices << i + 2
      end
    end
    max_sum = best
    i += 1
  end
  # p max_sum
  # p accumulated_indices
  p max_sum
  p accumulated_indices
  p arr.length
  p arr[-2], arr[-1]
  p  max_sum + arr[-2] + arr[-1]
  if accumulated_indices.last == arr.length - 3
    return [max_sum, max_sum + arr[-2], max_sum + arr[-2] + arr[-1], arr[-3], arr[-3..-2].reduce(:+), arr[-3..-1].reduce(:+)].max
  elsif accumulated_indices.last == arr.length - 2
    return [max_sum, max_sum + arr[-1], arr[-1]].max
  else
    return max_sum
  end
end

p "largest_cont_subsum2"
list = [2, 3, -6, 7, -6, 7]
p largest_cont_subsum2(list) #== 8
list = [-5, -1, -3]
p largest_cont_subsum2(list) #== -1
p "should be 36"
p largest_cont_subsum2([1, 2, 3, 4, 5, 6, 7, 8]) #== 36
p "should be 27"
p largest_cont_subsum2([1, -9, 3, -2, 5, 6, 7, 8]) #== 27
