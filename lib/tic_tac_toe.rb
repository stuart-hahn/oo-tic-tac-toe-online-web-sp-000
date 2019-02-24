class TicTacToe
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def board=(board)
    @board = board
  end

  def board
    @board
  end

  WIN_COMBINATIONS = [
  [0, 1, 2], #top row win
  [3, 4, 5], #middle row win
  [6, 7, 8], #bottom row win
  [0, 4, 8], #diagonal win
  [2, 4, 6], #diagonal win
  [0, 3, 6], #left column win
  [1, 4, 7], #middle column win
  [2, 5, 8]  #right column win
]

  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(input)
    index = input.to_i - 1
  end

  def move(position, token)
    @board[position] = token
  end

  def position_taken?(position)
    @board[position] == "X" || @board[position] == "O"
  end

  def valid_move?(position)
    position.between?(0,8) && !position_taken?(position)
  end

  def turn_count
    count = 0
    board.each do |position|
      if position == "X" || position == "O"
        count += 1
      end
    end
    return count
  end

end
