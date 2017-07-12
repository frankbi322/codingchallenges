

def valid_board?(board)
    if rows?(board) && columns?(board) && squares?(board)
        return "True"
    else
        return "False"
    end
end

def rows?(board)
    board.all? do |row|
        row.sort == [1,2,3,4,5,6,7,8,9]
    end
end

def columns?(board)
    cols = board.transpose
    cols.all? {|col| col.sort == [1,2,3,4,5,6,7,8,9]}
end

def squares?(board)
    squares = squares(board)
    squares.all? {|square| square.sort == [1,2,3,4,5,6,7,8,9]}
end

def squares(board)
    (0..8).to_a.map {|idx| square(board, idx)}
end

def square(board, idx)
   tiles = []
   x = (idx / 3) * 3
   y = (idx % 3) * 3
   (x..x+2).each do |i|
       (y..y+2).each do |j|
           tiles << board[i][j]
       end
   end
   tiles
end

ARGF.each do |line|
    array = line.split(",").map{ |el| el.to_i}
    board = array.each_slice(9).to_a
    puts valid_board?(board)
end
