require_relative "./Slideable.rb"

class Queen < Piece
  include Slideable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :Q
  end

  def move_dirs
    HORIZONTAL_DIRS + DIAGONAL_DIRS
  end

end


q1 = Queen.new("red", Board.new, [0,4])
p q1.move_dirs