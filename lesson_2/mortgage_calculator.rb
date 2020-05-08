# methods
def prompt(message)
  puts "=> #{message}"
end

def positive_float?(input)
  input.to_f.to_s == input && input.to_f > 0
end

# initiate variables
loan_amount = 0.0
# getting user input
loop do
  prompt "Enter the loan amount: (format: 0.0, be sure to include the decimal
  point!"
  loan_amount = gets.chomp
  break if !loan_amount.empty? && positive_float?(loan_amount)
  prompt "Please enter a valid, positive float."
end
prompt "Enter the Annual Percentage Rate (APR): "
apr = gets.chomp.to_f
prompt "Enter the loan duration: (in months)"
months = gets.chomp.to_i

# converting APR to monthly
monthly_interest_rate = apr / 12

# calculating monthly payment
monthly_payment = (loan_amount * (monthly_interest_rate / (1 -
(1 + monthly_interest_rate)**(-months)))).round(2)

# output
puts "You will need to pay #{monthly_payment} per month over a duration of
#{months} months."
