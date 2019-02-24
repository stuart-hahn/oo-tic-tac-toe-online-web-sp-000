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

  def display_board(@board)
    puts @board
  end

end
