require_relative "./Slideable.rb"
require_relative "./Piece.rb"

class Rook < Piece
attr_reader :symbol
include Slideable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :R
  end

  def move_dirs
    HORIZONTAL_DIRS
  end

end