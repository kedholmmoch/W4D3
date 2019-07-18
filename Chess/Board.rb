require_relative './Piece.rb'
require_relative './Rook.rb'
require_relative './NullPiece.rb'

class Board
attr_reader :grid

  def initialize(size=8)
    @grid = Array.new(size) { Array.new(size, NullPiece.instance) }
  end
  
  def set_board
     add_piece(rook, [0,0])
    
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end

  def []=(pos, val)
     row, col = pos
    grid[row][col] = val
  end

  # def set_board
  #   skip_rows = [2, 3, 4, 5]
  #   @grid.each_with_index do |row, row_idx|
  #     next if skip_rows.include?(row_idx)
  #     row.each_with_index do |col, col_idx|
  #       @grid[row_idx][col_idx] = Piece.new
  #   end
  # end

  def move_piece(start_pos, end_pos)
    if !pos_occupied?(start_pos) 
      raise "The square is empty!"
    end 

    # if !valid_move?(pos)
    #   raise "That is not a valid move!"
    # end

    self[end_pos] = self[start_pos]
    self[start_pos] = nil
  end

  def pos_occupied?(pos)
    return false if self[pos] == nil
    true
  end

  def valid_move?(pos)

  end

  def add_piece(piece, pos)
    if self[0] == 0 || self[0] == 1
      self[pos] = piece.capitalize.new(:black, @grid, pos)
    elsif
      self[pos] = piece.capitalize.new(:white, @grid, pos)
    end
  end
end

board = Board.new
board.set_board

 puts "---------"

 p board[[0,0]]

