<<<<<<< HEAD
def input_to_index(index)
  index = index.to_i - 1
  #for testing purposes
#  puts "You have chosen #{index} as your space"
  return index
=======
def input_to_index(input)
  return input = input.to_i - 1
>>>>>>> 6715196897f71c0449b036e10b16d33a25adeb56
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
<<<<<<< HEAD
  if (index > 8 || index < 0)
    #for testing purposes
  #  puts "Out of range"
    return false
  else
    if (board[index] == " " || board[index] == "")
      return true
    else
      # for testing purposes
    #  puts "Taken space"
      return false
    end
  end
end

def move(board, input, player = "X")
  board[input] = player
  display_board(board)
=======
  if (index > 8 || index < 0 || board[index] == nil)
    return false
  elsif (board[index] == " " || board[index] == "")
    return true
  end
end


def move(board, input, player = "X")
  board[input] = player
>>>>>>> 6715196897f71c0449b036e10b16d33a25adeb56
end

def turn(board)
  puts "Please enter 1-9:"
<<<<<<< HEAD
  index = gets.strip
  index = input_to_index(index)
  if (valid_move?(board, index))
    move(board, index)
  else
    turn(board)
=======
  userInput = gets.strip
  index = input_to_index(index)
  if (valid_move?)
    move(board, index)
  else
    loop do
      puts "Please enter 1-9:"
      userInput = gets.strip
      index = input_to_index(userInput)
      if valid_move(index)
        break
      end
    end
>>>>>>> 6715196897f71c0449b036e10b16d33a25adeb56
  end
end
