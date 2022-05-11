# frozen_string_literal: true

require 'matrix'
# Class for the life grid
class Board
  attr_reader(:rows, :columns, :cells_matrix)

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    @cells_matrix = Matrix.build(rows, columns) { '.' }
  end

  def print_matrix
    puts cells_matrix.to_a.map
  end
end

board1 = Board.new(4, 8)

board1.getMatrix
