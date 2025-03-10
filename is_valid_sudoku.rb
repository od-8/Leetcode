def is_valid_sudoku(board)
	# Hash for rows with each key set to a new set
	# Same but for cols
	# Same but for the squares

	# loop with rows var
	# loop with cols var
	# skip iteration if the current elem is empty ('.')
	# check 

	cols = Hash.new { |h, k| h[k] = Set.new }
  rows = Hash.new { |h, k| h[k] = Set.new }
  squares = Hash.new { |h, k| h[k] = Set.new }

  9.times do |r|
    9.times do |c|
      next if board[r][c] == "."

      if rows[r].include?(board[r][c]) ||
         cols[c].include?(board[r][c]) ||
         squares[[r / 3, c / 3]].include?(board[r][c])
        return false
      end

      rows[r].add(board[r][c])
      cols[c].add(board[r][c])
      squares[[r / 3, c / 3]].add(board[r][c])
    end
  end

  true
end

arr = [
	["5","3",".",".","7",".",".",".","."],
	["6",".",".","1","9","5",".",".","."],
	[".","9","8",".",".",".",".","6","."],
	["8",".",".",".","6",".",".",".","3"],
	["4",".",".","8",".","3",".",".","1"],
	["7",".",".",".","2",".",".",".","6"],
	[".","6",".",".",".",".","2","8","."],
	[".",".",".","4","1","9",".",".","5"],
	[".",".",".",".","8",".","5","7","9"]
]

p is_valid_sudoku(arr)