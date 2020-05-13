# Each UUID consists of 32 hexadecimal characters, and is typically broken into
# 5 sections like this 8-4-4-4-12 and represented as a string.
# f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91
HEXADECIMAL =  %w(1 2 3 4 5 6 7 8 9 a b c d e f)
def get_uuid
  string = ""
  32.times do
    string << HEXADECIMAL.sample
  end
  string.insert(8, '-')
  string.insert(13, '-')
  string.insert(18, '-')
  string.insert(23, '-')
  string
end

id_1 = get_uuid
puts id_1
