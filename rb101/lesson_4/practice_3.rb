ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
younger_ages = ages.reject{|key,value| value >= 100}
p younger_ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
puts ages.values.min

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles Bernie)
index = 0
flintstones.each_with_index do |name, idx|
  if name[0,2] == "Be"
    index = idx
    break
  end
end
puts index
