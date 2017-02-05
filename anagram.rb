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
  str1.chars.sort == str2.chars.sort && str1 != str2
end

puts anagram3?("gizmo", "sally") == false
puts anagram3?("elvis", "lives") == true

def anagram4?(str1, str2)
  hash1 = {}
  hash2 = {}

  str1.chars.each do |char|
    if hash1.include?(char)
      hash1[char] += 1
    else
      hash1[char] = 1
    end
  end

  str2.chars.each do |char|
    if hash2.include?(char)
      hash2[char] += 1
    else
      hash2[char] = 1
    end
  end

  hash1.each do |key, val|
    return false if hash2[key] != hash1[key]
  end

  hash2.each do |key, val|
    return false if hash2[key] != hash1[key]
  end

  true
end

puts anagram4?("gizmo", "sally") == false
puts anagram4?("elvis", "lives") == true

def anagram5?(str1, str2)
  hash = {}
  str1.chars.each do |char|
    if hash.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  str2.chars.each do |char|
    return false if hash[char].nil?
    hash[char] -= 1
  end

  hash.each do |key, value|
    return false if value > 0
  end

  true
end

puts anagram5?("gizmo", "sally") == false
puts anagram5?("elvis", "lives") == true

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
