require_relative "./Stepable.rb"

class Knight < Piece
  include Stepable

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :KT
  end

  def move_diffs
    KNIGHT_DIFFS
  end

end