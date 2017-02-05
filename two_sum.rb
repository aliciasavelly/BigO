def two_sum?(nums, target)
  nums = nums.dup.sort
  nums.each_with_index do |num, idx|
    nums.each_with_index do |num2, idx2|
      return true if num + num2 == target && idx != idx2
    end
  end
  false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) == true
p two_sum?(arr, 10) == false

def two_sum(nums, target)
  # iterature thru arr of nums, then create a hash using num as key,
  # values as indices
  # then you would check to see if c bomination fot he keys  is == target,
  # if u do throw in all valid indices pairs

end
