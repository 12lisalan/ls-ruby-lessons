str = "abcde"
array = []
last_index =  str.length - 1
str.each_char do |x| 
  array[last_index] = x
  last_index -= 1
end
p array
str2 = array.join
p str2