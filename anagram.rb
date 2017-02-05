def anagram?(str1, str2)
  str1.chars.permutation.map(&:join).include?(str2)
end

puts anagram?("gizmo", "sally") == false
puts anagram?("elvis", "lives") == true

def anagram2?(str1, str2)
  arr1, arr2 = str1.chars, str2.chars

  arr1.each do |char|
    target_idx = arr2.find_index(char)
    return false unless target_idx
    arr2.delete_at(target_idx)
  end

  arr2.empty?
end

puts anagram2?("gizmo", "sally") == false
puts anagram2?("elvis", "lives") == true


def anagram3?(str1, str2)
  str1.sort == str2.sort && str1 != str2
end

def two_sum(nums, target)
  nums = nums.dup.sort
  i = 0
end

def two_sum(nums, target)
  # iterature thru arr of nums, then create a hash using num as key,
  # values as indices
  # then you would check to see if c bomination fot he keys  is == target,
  # if u do throw in all valid indices pairs
end
