def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value='X')
  board[index] = value
end

def valid_move?(board, index)
  if index.between?(0,8) && position_taken?(board, index) == false
    true
  else
    false
  end
end

def position_taken?(board, index)
  value = board[index]
  if value == " " || value == "" || value == nil
    false
  else
    true
  end
end

# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.strip
#   index = input_to_index(input)
#   if valid_move?(board, index)
#     move(board, index, value="X")
#     display_board(board)
#   else
#     until valid_move?(board, index) do
#       puts "Please enter 1-9:"
#       input = gets.strip
#       index = input_to_index(input)
#     end
#     move(board, index, value="X")
#     display_board(board)
#   end
# end

def turn(board)
  while true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
        break
    end
  end

  move(board, index, value="X")
  display_board(board)
end
