def display_board(array)
  array.each do |y|
    print "|"
    y.each do |x|
      x = x.center(5, padstr=' ')
      print " #{x} |"
    end
    print "\n"
  end
end
board = [['x','(0,1)','(0,2)'],
             ['(1,0)','(1,1)','(1,2)'],
             ['(2,0)','(2,1)','(2,2)']]
             
display_board(board)