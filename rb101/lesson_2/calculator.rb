#self implementation
Kernel.puts("Enter the first number: ")
num_1 = Kernel.gets().chomp().to_i()
Kernel.puts("Enter the second number: ")
num_2 = Kernel.gets().chomp().to_i()
Kernel.puts("Enter type of operation: ")
operation = Kernel.gets().chomp()

case operation
when 'add' then puts num_1 + num_2
when 'subtract' then puts num_1 - num_2
when 'multiply' then puts num_1 * num_2
when 'divide' then puts num_1 / num_2
end

