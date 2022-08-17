require './lib/board'
require './lib/displayable'
require './lib/game'
require './lib/game_prompts'
require './lib/notation_translator'
require './lib/move_validator'
require './lib/serializer'
require './pieces/piece'
require './pieces/king'
require './pieces/queen'
require './pieces/rook'
require './pieces/bishop'
require './pieces/knight'
require './pieces/pawn'
require './movement/movement_factory'
require './movement/basic_movement'
require './movement/en_passant_movement'
require './movement/pawn_promotion_movement'
require './movement/castling_movement'


extend GamePrompts
extend Serializer 

def play_game(input)
    if input == '1'
        single_player = Game.new(1)
        single_player.setup_board
        single_player.play
    elsif input == '2'
        two_player = Game.new(1)
        two_player.setup_board
        two_player.play
    elsif input == '3'
        load_game.play
    end
end


loop do
    puts game_mode_choices
    mode = select_game_mode
    play_game(mode)
    break if repeat_game == :quit
  end
  
