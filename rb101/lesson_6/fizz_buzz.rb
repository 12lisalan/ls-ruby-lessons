# a method that takes in two arguments：starting number and ending number
# print numbers between the two numbers (inclusive)
# if divisible by 3, print fizz
# if by 5, buzz
# if by both, fizzbuzz
# return nil (presumably)

def fizzbuzz(first_num, end_num)
  first_num..end_num.times do |num|
    if (num % 3 == 0) && (num % 5 == 0) 
      puts "fizzbuzz"
    elsif (num % 3 == 0)
      puts "fizz"
    elsif (num % 5 == 0)
      puts "buzz"
    else
      puts num
    end
  end
end

fizzbuzz(0, 23)