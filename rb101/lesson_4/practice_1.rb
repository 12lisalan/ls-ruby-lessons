# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index{|name, idx| flintstones_hash[name] = idx}
p flintstones_hash

counter = -1
flintstones_hash_2 = flintstones.map do |name|
  counter += 1
  [name, counter]
end
p  flintstones_hash_2.to_h

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
p ages.values.sum