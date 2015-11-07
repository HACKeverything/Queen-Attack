class Queens
  attr_reader :white, :black

  def initialize(hash={white: [0, 3], black: [7, 3]})
    @white = hash[:white]
    @black = hash[:black]

    raise ArgumentError if @white == @black
  end

  def to_s
    chessboard = "_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _\n_ _ _ _ _ _ _ _"
    chessboard[white[0]*16 + white[1]*2] = 'W'
    chessboard[black[0]*16 + black[1]*2] = 'B'
    chessboard
  end

  def attack?
    result = ((delta(0) == 0) || (delta(1) == 0) || ((delta(0) / delta(1)).abs == 1))  ? true : false
  end

  private

  def delta(coordinate)
    black[coordinate] - white[coordinate]
  end
end