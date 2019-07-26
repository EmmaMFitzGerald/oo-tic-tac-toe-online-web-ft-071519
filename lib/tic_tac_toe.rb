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
  
  def input_to_index(input)
   input.to_i - 1
  end
  
  def move(index, token = "X")
    @board[index] = token
  end
  
  
  def position_taken?(index)
   index = index.to_i
   if (@board[index] == " ") || (@board[index] == "") || (@board[index] == nil)
      return false 
   else
      return true
   end
  end 
  
  def valid_move?(index)
    index = index.to_i
    if index.between?(0,8) && !position_taken?(index)
      return true
    else
      return false
    end
  end
  
  def turn_count
    counter = 0 
    board.each do |grid|
      if grid  == "X" || grid == "O"
      counter += 1  
      end
    end
    counter
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def turn 
    puts "Please enter 1-9"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, token = "X")
      turn_count
      current_player
    else 
      puts "Try again"
      turn
    end
    display_board
  end

  def won?
    if @board.include? WIN_COMBINATIONS
      
  end
  
end