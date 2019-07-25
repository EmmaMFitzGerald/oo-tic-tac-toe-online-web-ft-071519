class TicTacToe
  attr_reader :board
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
  
  
  
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(players_number)
    players_number = players_number.to_i 
    @board_number = players_number - 1
  end
  
  def move(players_move, token = X)
    @board[players_move] = token
  end
  
  
  def position_taken?(index)
   if (@board[index] == " ") || (@board[index] == "") || (@board[index] == nil)
      return false 
   else
      return true
   end
  end 
  
  def valid_move?(index)
    if index.between?(0,8) && !position_taken?(index)
      return true
    else
      return false
    end
  end
  
  def turn_count
    @board.length
  end
  
  def turn
    puts "Pick a number between 1 and 9"
    user_number = gets 
    user_number.chomp
    input_to_index(user_number)
    valid_move(index)
    if valid_move
      move 
      @board 
    else 
      puts "Try again"
    end
  end

  
end