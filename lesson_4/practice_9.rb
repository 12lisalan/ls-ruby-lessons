words = "the flintstones rock"
word_array = words.split
word_array.map{|x| x.capitalize!}
words = word_array.join(' ')
puts words


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |k,v|
  if v['age'] < 18
    munsters[k]['age_group'] = 'kid'
  elsif v['age'] < 65
    munsters[k]['age_group'] = 'adult'
  else
    munsters[k]['age_group'] = 'senior'
  end
end

p munsters
