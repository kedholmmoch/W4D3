require_relative "./Slideable.rb"

class Bishop < Piece
attr_reader :symbol
include Slideable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :B
  end

  def move_dirs
    DIAGONAL_DIRS
  end

end