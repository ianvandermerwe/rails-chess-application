class ChessBoardController < ApplicationController
  helper_method :place_piece

  def load_chess_board
    # 8 x 8
    #    1  2  3  4  5  6  7  8
    # A1
    # B2
    # C3
    # D4
    # E5
    # F6
    # G7
    # I8
    @chess_layout = {
        "rows" => 8,
        "columns" => 8
    }

    # abort @chess_layout.rows

    @chess_pieces = {
        "1.1" => 'white-piece castle',
        "1.2" => 'white-piece horse',
        "1.3" => 'white-piece bishop',
        "1.4" => 'white-piece queen',
        "1.5" => 'white-piece king',
        "1.6" => 'white-piece bishop',
        "1.7" => 'white-piece horse',
        "1.8" => 'white-piece castle',

        "2.1" => 'white-piece pawn',
        "2.2" => 'white-piece pawn',
        "2.3" => 'white-piece pawn',
        "2.4" => 'white-piece pawn',
        "2.5" => 'white-piece pawn',
        "2.6" => 'white-piece pawn',
        "2.7" => 'white-piece pawn',
        "2.8" => 'white-piece pawn',

        "8.1" => 'black-piece castle',
        "8.2" => 'black-piece horse',
        "8.3" => 'black-piece bishop',
        "8.4" => 'black-piece queen',
        "8.5" => 'black-piece king',
        "8.6" => 'black-piece bishop',
        "8.7" => 'black-piece horse',
        "8.8" => 'black-piece castle',

        "7.1" => 'black-piece pawn',
        "7.2" => 'black-piece pawn',
        "7.3" => 'black-piece pawn',
        "7.4" => 'black-piece pawn',
        "7.5" => 'black-piece pawn',
        "7.6" => 'black-piece pawn',
        "7.7" => 'black-piece pawn',
        "7.8" => 'black-piece pawn',
    }

    # abort @chess_layout.inspect

    render "chess/board"
  end

  def place_piece row, column
    location = row.to_s + "." + column.to_s
    if @chess_pieces["#{location}"].to_s != ""
      pieceName = "piece " + @chess_pieces["#{location}"].to_s
      pieceName
    end
  end
end
