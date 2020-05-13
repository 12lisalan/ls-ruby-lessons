# sort by descending order
arr = ['10', '11', '9', '7', '8']
sorted_arr = arr.sort do |a,b|
  a = a.to_i
  b = b.to_i
  b <=> a
end
p sorted_arr

# order this array of hashes based on the year of publication of each book,
# from the earliest to the latest
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
sorted_books = books.sort_by do |x|
  x[:published].to_i
end
p sorted_books

#reference the letter g
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
puts "arr1: #{arr1[2][1][3]}"
arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
puts "arr2: #{arr2[1][:third][0]}"
arr3 = [['abc'], ['def'], {third: ['ghi']}]
puts "arr3: #{arr3[2][:third][0][0]}"
hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
puts "hsh1: #{hsh1['b'][1]}"
hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
puts "hsh2: #{hsh2[:third].key(0)}"