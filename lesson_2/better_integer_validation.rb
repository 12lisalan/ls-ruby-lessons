def integer?(input)
  input.to_i.to_s == input
end

def integer?(input)
  /^\d+$/.match(input)
end

def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  input.to_f.to_s == input
end
