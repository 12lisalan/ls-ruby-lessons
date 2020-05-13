def display_board(array)
  puts "_____________"
  array.each do |y|
    print "|"
    y.each do |x|
      print " #{x} |"
    end
    print "\n"
  end
  puts "_____________"
end

board = [[' ',' ',' '],[' ',' ',' '],[' ',' ',' ']]
display_board(board)
