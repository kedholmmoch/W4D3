require_relative "./Stepable.rb"

class King < Piece
  include Stepable
  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :K
  end

  def move_diffs
    ALL_DIFFS
  end


end