hsh = {first: ['the', 'quick'],
      second: ['brown', 'fox'],
      third: ['jumped'],
      fourth: ['over', 'the', 'lazy', 'dog']}
# Using the each method, write some code to output all of the vowels from the strings.
VOWELS = %w(a e i o u)
hsh.each_value do |v|
  v.each do |str|
    str.each_char do |char|
      print char if VOWELS.include?(char)
    end
  end
end
print "\n"

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# return a new array of the same structure but with the sub arrays being ordered
# (alphabetically or numerically as appropriate) in descending order
new_arr = arr.map do |x|
  x.sort{|a, b| b <=> a}
end
p new_arr