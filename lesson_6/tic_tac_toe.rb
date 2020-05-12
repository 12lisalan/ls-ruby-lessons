
SYMBOLS = %w(X O)
def prompt(message)
  puts "=> #{message}"
end

def display(array)
  array.each do |y|
    print "|"
    y.each do |x|
      x = x.center(5, ' ')
      print " #{x} |"
    end
    print "\n"
  end
end

def display_win(winner)
  puts "#{winner} won!"
end

def clear()
  [['(0,0)', '(0,1)', '(0,2)'],
  ['(1,0)', '(1,1)', '(1,2)'],
  ['(2,0)', '(2,1)', '(2,2)']]
end

def update(x, y, array, symbol = 'X')
  array[x][y] = symbol if empty?(x, y, array)
end

def computer_update(array)
  loop do
    x = rand(0..2)
    y = rand(0..2)
    break if empty?(x, y, array) && update(x, y, array, 'O')
  end
end

# takes coordinates
# returns true if it is empty
def empty?(x, y, array)
  !(SYMBOLS.include?(array[x][y]))
end

# checks if board is full
def board_full?(array)
  array.each_with_index do |sub_array,y|
    sub_array.each_with_index do |_, x|
      return false if empty?(x, y, array)
    end
  end
end

def won?(array)
  vertical_check(array) || diagonal_check(array) || horizontal_check(array)
end

def horizontal_check(array)
  array.each_with_index do |sub_array, x|
    first_symbol = array[x][0]
    return true if sub_array.all? do |symbol|
      symbol == first_symbol
    end
  end
  false
end

def vertical_check(array)
  y = 0
  while y < 3
    first_symbol = array[0][y]
    x = 1
    col_same = true
    while x < 3
      if first_symbol != array[x][y]
        col_same = false
      end
      x += 1
    end
    if col_same == true
      return true
    end
    y += 1
  end
  false
end

def diagonal_check(array)
  symbol = array[1][1]
  if array[0][0] == symbol && array[2][2] == symbol
    return true
  elsif array[2][0] == symbol && array[0][2] == symbol
    return true
  else
    false
  end
end

prompt("Welcome to Tic-tac-toe!")
prompt("First player to win 5 rounds wins!")

board = [['(0,0)', '(0,1)', '(0,2)'],
         ['(1,0)', '(1,1)', '(1,2)'],
         ['(2,0)', '(2,1)', '(2,2)']]
loop do # outer loop
  round_number = 0
  player_score = 0
  computer_score = 0
  
  loop do # score keeping loop
    prompt("It is round #{round_number}.")
    board = clear()
    loop do  # main game loop
      loop do  # checking for valid coordinates
        display(board)
        prompt("Enter your coordinates: ")
        input = gets.chomp
        input_x = input[0].to_i
        input_y = input[2].to_i
        break if update(input_x, input_y, board)
        prompt("Invalid coordinates! Please try again. ")
      end
      if won?(board)
        display_win("Human")
        display(board)
        player_score += 1
        break
      end
  
      if board_full?(board)
        prompt("It's a tie!")
        break
      end
  
      computer_update(board)
      if won?(board)
        display_win("Computer")
        display(board)
        computer_score += 1
        break
      end
    end #main game loop end
    
    if player_score >= 5
      prompt "Player won 5 : #{computer_score}!"
      break
    elsif computer_score >= 5
      prompt "Computer won  5 : #{player_score}!"
      break
    else
      prompt "The current score is #{player_score} : #{computer_score}"
      round_number += 1
    end # if statement end
    
  end #score keeping loop end
  prompt "Would you like to play again? (y/n)"
  answer = gets.chomp
  if answer != 'y'
    prompt "Thanks for playing!"
    break
  end
  
end # outer loop end
