# frozen_string_literal: true

require './cell'
require 'matrix'
# Class for the life grid
class Board
  attr_reader(:rows, :columns, :cells_matrix)

  def initialize(rows, columns)
    @rows = rows
    @columns = columns

    # @cells_matrix = Array.new(rows) { Array.new(columns) { [' . '] } }
    @cells_matrix = Matrix.build(rows, columns) {0}
  end

  # def position_cell(cell); 
  #   cells_matrix.find_index(cell)
  # end
  # def print_matrix
  #   i = 0
  #   while i < rows
  #     puts @cells_matrix[i].join(' ')
  #     i += 1
  #   end
  # end

  def initial_position
    @cells_matrix[1,4] = 1
    @cells_matrix[2,4] = 1
    @cells_matrix[2,3] = 1
    @cells_matrix[3,6] = "x"
    
  end

  def neighbours?(cell)
    neighbours = []
    x = (cells_matrix.find_index(cell)[0])
    y = (cells_matrix.find_index(cell)[1])

    neighbours.<<(cells_matrix[x - 1, y - 1])

    neighbours.<<(cells_matrix[x - 1, y])

    neighbours.<<(cells_matrix[x - 1, y + 1])

    neighbours.<<(cells_matrix[x, y - 1])

    neighbours.<<(cells_matrix[x, y + 1])

    neighbours.<<(cells_matrix[x + 1, y - 1])

    neighbours.<<(cells_matrix[x + 1, y])

    neighbours.<<(cells_matrix[x + 1, y + 1])

    puts neighbours
    neighbours.sum
  end
end

board1 = Board.new(4, 8)

board1.initial_position
puts board1.cells_matrix
puts board1.neighbours?(board1.cells_matrix[3,7])