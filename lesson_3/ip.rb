def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if(dot_separated_words.size != 4)
  
  dot_separated_words.each{|x| return false if !(x.is_an_ip_number)}
  return true
end

dot_separated_ip_address?('1.1.1.1')
dot_separated_ip_address?('1.1.1')
dot_separated_ip_address?('400.1.1.1')
# Problems: 
# not returning false condition
# not handling the case that there are more or fewer than 4 components to the
# IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)