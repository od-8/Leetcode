def is_valid_sudoku(board)
	board.each_with_index do |row, index|
		valid_row = valid_row(row)

		column = []
		board.each { |row| column << row[index] } # Turns columns into rows

		valid_column = valid_row(column)

		square1 = valid_row([board.dig(0, 0), board.dig(0, 1), board.dig(0, 2), board.dig(1, 0), board.dig(1, 1), board.dig(1, 2), board.dig(2, 0), board.dig(2, 1), board.dig(2, 2)])
		square2 = valid_row([board.dig(0, 3), board.dig(0, 4), board.dig(0, 5), board.dig(1, 3), board.dig(1, 4), board.dig(1, 5), board.dig(2, 3), board.dig(2, 4), board.dig(2, 5)])
		square3 = valid_row([board.dig(0, 6), board.dig(0, 7), board.dig(0, 8), board.dig(1, 6), board.dig(1, 7), board.dig(1, 8), board.dig(2, 6), board.dig(2, 7), board.dig(2, 8)])
		square4 = valid_row([board.dig(3, 0), board.dig(3, 1), board.dig(3, 2), board.dig(4, 0), board.dig(4, 1), board.dig(4, 2), board.dig(5, 0), board.dig(5, 1), board.dig(5, 2)])
		square5 = valid_row([board.dig(3, 3), board.dig(3, 4), board.dig(3, 5), board.dig(4, 3), board.dig(4, 4), board.dig(4, 5), board.dig(5, 3), board.dig(5, 4), board.dig(5, 5)])
		square6 = valid_row([board.dig(3, 6), board.dig(3, 7), board.dig(3, 8), board.dig(4, 6), board.dig(4, 7), board.dig(4, 8), board.dig(5, 6), board.dig(5, 7), board.dig(5, 8)])
		square7 = valid_row([board.dig(6, 0), board.dig(6, 1), board.dig(6, 2), board.dig(7, 0), board.dig(7, 1), board.dig(7, 2), board.dig(8, 0), board.dig(8, 1), board.dig(8, 2)])
		square8 = valid_row([board.dig(6, 3), board.dig(6, 4), board.dig(6, 5), board.dig(7, 3), board.dig(7, 4), board.dig(7, 5), board.dig(8, 3), board.dig(8, 4), board.dig(8, 5)])
		square9 = valid_row([board.dig(6, 6), board.dig(6, 7), board.dig(6, 8), board.dig(7, 6), board.dig(7, 7), board.dig(7, 8), board.dig(8, 6), board.dig(8, 7), board.dig(8, 8)])


		return false if valid_row == false || valid_column == false ||
		square1 == false || square2 == false || square3 == false ||
		square4 == false || square5 == false || square6 == false ||
		square7 == false || square8 == false || square9 == false
		
	end

	return true
end

def valid_row(row)
	row_nums = row.select { |elem| elem != '.' }
	if row_nums.any? { |elem| !elem.to_i.between?(1, 9) } || row_nums != row_nums.uniq
		return false
	end
end

arr = [
	["8","3",".",".","7",".",".",".","."],
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