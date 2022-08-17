class Queen < Piece
  def initialize(board, args)
    super(board, args)
    @symbol = " \u265B "
  end

  private

  def move_set
    [[0, 1], [0, -1], [-1, 0], [1, 0], [1, 1], [1, -1], [-1, 1], [-1, -1]]
  end
end
