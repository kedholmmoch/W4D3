
require_relative "./Board.rb"

class Piece

#position is piece's current position
def initialize(color, board, pos)
  @color = :color
  @board = board
  @pos = pos

end

def empty?
  self.is_a?(NullPiece) ? true : false
end

def valid_moves?

end


def symbol
  :piece_symbol
end

def to_s
  self.symbol
end


end


