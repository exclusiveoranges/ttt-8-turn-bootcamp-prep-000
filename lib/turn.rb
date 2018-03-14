def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end


def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == false
    return true
  end
end


def input_to_index(input)
  index = input.to_i - 1
end


def move(board, index, value = "X")
  board[index] = value
  return board
end


def turn(board, input)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
    if position_taken? == false
      move(board, index, value)
      return display_board(board)
    else turn(board, input)
    end
end
