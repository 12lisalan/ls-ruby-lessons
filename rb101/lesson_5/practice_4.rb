# For each of these collection objects where the value 3 occurs,
# demonstrate how you would change this to 4
arr1 = [1, [2, 3], 4]
arr1[1][1] = 4
p arr1
arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4
p arr2
hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4
p hsh1
hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4
p hsh2

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
sum = 0
munsters.each_value do |v|
  if v['gender'] == 'male'
    sum += v['age']
  end
end
puts sum
