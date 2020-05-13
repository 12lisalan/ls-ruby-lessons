# print out the name, age and gender of each family member:
# (Name) is a (age)-year-old (male or female).
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |k,v|
  puts "#{k} is a #{v['age']}-year-old #{v['gender']}."
end

a = 2
b = [5, 8]
arr = [a, b]  # [2,[5,8]]

arr[0] += 2   #modifies array but not a since integers are immutable, so a = 2, arr = [4,[5,8]] (assigns new value to array)
arr[1][0] -= a #still modified, so b = [3,8], arr = [4,[3,8]]
p a
p b
p arr