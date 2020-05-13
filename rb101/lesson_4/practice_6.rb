flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map!{|x| x[0,3]}
p flintstones

# Create a hash that expresses the frequency with which each letter occurs in
# this string:
statement = "The Flintstones Rock"
hash = {}
statement = statement.delete(' ')
statement = statement.split('')
statement.each do |c|
  hash[c] = statement.count(c)
end
p hash