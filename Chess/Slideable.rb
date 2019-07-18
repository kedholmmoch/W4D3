require_relative "./Board.rb"

module Slideable
  attr_reader :HORIZONTAL_DIRS, :DIAGONAL_DIRS

  def moves
    all_moves = []

    dirs = self.move_dirs
    dirs.each do |dir|
      dir0, dir1 = dir
      new_moves = grow_unblocked_moves_in_dir(dir0, dir1)
      all_moves.concat(new_moves)
    end

    all_moves
  end
  
  private


  HORIZONTAL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0]]
  DIAGONAL_DIRS = [[1,1], [-1, 1], [1, -1], [-1, -1]]
  ALL_DIRS = [[0, 1], [1, 0], [0, -1], [-1, 0], [1,1], [-1, 1], [1, -1], [-1, -1]]


  def move_dirs

  end

 def grow_unblocked_moves_in_dir(dx,dy) # ==> [1,1]
   unblocked_moves_in_dir = []
   start_position = self.pos
   next_position = [(start_position[0] + dx), (start_position[1] + dy)]
   
   until board.pos_occupied?(next_position) 
      unblocked_moves_in_dir << next_position
      next_position = [(next_position[0] + dx), (next_position[1] + dy)]
   end

   if board[next_position].color != self.color
      unblocked_moves_in_dir << next_position
   end

   return unblocked_moves_in_dir
 end

end

