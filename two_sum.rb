# O(n^2) quadratic time
# O(1) constant space
def bad_two_sum?(nums, target)
  nums = nums.dup.sort
  nums.each_with_index do |num, idx|
    nums.each_with_index do |num2, idx2|
      return true if num + num2 == target && idx != idx2
    end
  end
  false
end

arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) == true
# p bad_two_sum?(arr, 10) == false

# O(nlogn) linearithmic time
# O(n) linear space
def okay_two_sum?(nums, target)
  sorted_nums = nums.sort

  i = 0
  j = sorted_nums.length - 1

  while i < j
    case (sorted_nums[i] + sorted_nums[j] <=> target)
    when 0
      return true
    when -1
      i += 1
    when 1
      j -= 1
    end
  end

  false
end

# p okay_two_sum?(arr, 6) == true
# p okay_two_sum?(arr, 10) == false

# O(n) linear time
# O(n) linear space
def two_sum?(nums, target)
  nums_hash = {}

  nums.each do |num|
    return true if nums_hash[target - num]
    nums_hash[num] = true
  end

  false
end

p two_sum?(arr, 6) == true
p two_sum?(arr, 10) == false
