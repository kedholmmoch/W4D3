
require 'singleton'

class NullPiece
  include Singleton

  def initialize
    @color = colorless
    @symbol = :N
  end

  def symbol
    @symbol
  end

  def moves

  end
end