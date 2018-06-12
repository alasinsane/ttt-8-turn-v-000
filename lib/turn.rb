def display_board(board = ["  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  "])
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else 
    return true
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else 
    return false
  end
end

def turn(board)
  
  index = input.to_i - 1
  input = 0
  until input_to_index(input) == valid_move?(board, index)
  puts "invalid"
  input += 1
  if valid_move?(board, index) == true
    return board
    end    
  end
end