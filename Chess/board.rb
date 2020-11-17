require_relative "piece"
class Board

    attr_reader :board
    
    def initialize
        @board = Array.new(8) {Array.new(8)}
        self.populate
        #@null_piece
    end


    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos,val)
        row,col = pos
        @board[row][col] = val
    end

    def populate
        @board[0].map! {|square| Piece.new("Red")}
        @board[1].map! {|square| Piece.new("Red")}
        @board[6].map! {|square| Piece.new("Black")}
        @board[7].map! {|square| Piece.new("Black")}
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].is_a?(Piece) && valid_position?(end_pos)
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        else
            raise "You can't make that move"
        end

    end

    def valid_position?(pos)
        row, col = pos
        return true if row.between?(0,7) && col.between?(0,7) 
        false
    end
    
    def add_piece (piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end
end
