# constants
VALID_CHOICES = ['rock', 'paper', 'scissors']

# methods
def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'paper' && second == 'rock')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won!"
  elsif player == computer
    prompt("It's a tie!")
  else
    prompt("Computer won!")
  end
end

def prompt(message)
  puts "=> #{message}"
end


loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(',')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample
  puts "You chose #{choice}, computer chose #{computer_choice}"
  display_results(choice, computer_choice)
  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing!")
