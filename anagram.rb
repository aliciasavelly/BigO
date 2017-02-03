def anagram?(str1, str2)
  str1.chars.permutation.map(&:join).include?(str2)
end

puts anagram?("gizmo", "sally")    #=> false
puts anagram?("elvis", "lives")    #=> true

# def anagram2?(str1, str2)
#   temp1 = str1
#   temp2 = str2
#   str1.chars.each do |char|
#     str1.chars.each do |char
#     end
#   end
# end

def anagram3?(str1, str2)
  str1.sort == str2.sort && str1 != str2
end

def two_sum(nums, target)
  nums = nums.sort
  i = 0
  while
end

def two_sum(nums, target)
  # iterature thru arr of nums, then create a hash using num as key,
  # values as indices
  # then you would check to see if c bomination fot he keys  is == target,
  # if u do throw in all valid indices pairs
end
