

class Pawn < Piece

  def initialize(color, board, pos)
    super(color, board, pos)
    @symbol = :P
  end

  def move_dirs
    
  end

  private

  def at_start_row?
    return true if self.pos[0] == 1 || self.pos[0] == 6
    false
  end

  def forward_dir
    if @color == :black
      1
    elsif @color == :white
      -1
    end
  end

  def forward_steps
    unblocked_forward_moves= []

    if at_start_row?
    start_position = self.pos
    next_position = [(start_position[0] + forward_dir), (start_position[1])]
   
    until board.pos_occupied?(next_position) || unblocked_forward_moves.length == 2
        unblocked_forward_moves << next_position
        next_position = [(next_position[0] + forward_dir), (next_position[1])]
    end

   return unblocked_forward_moves
 
  end


  def side_attacks
    if self.color == :black

      possible_attack1 = [self.pos[0] + 1, self.pos[1] + 1]
      possible_attack2 = [self.pos[0] + 1, self.pos[1] - 1]

    else
      possible_attack1 = [self.pos[0] - 1, self.pos[1] + 1]
      possible_attack2 = [self.pos[0] - 1, self.pos[1] - 1]

    end

    [possible_attack1, possible_attack2].select { |pos| if pos_occupied?(pos) && board[pos].color != self.color }

  end

end