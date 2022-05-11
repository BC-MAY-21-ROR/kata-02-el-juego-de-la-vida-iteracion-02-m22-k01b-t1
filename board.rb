# frozen_string_literal: true
require './cell.rb'
require 'matrix'
# Class for the life grid
class Board
  attr_reader(:rows, :columns, :cells_matrix)

  def initialize(rows, columns)
    @rows = rows
    @columns = columns
    
    @cells_matrix = Array.new(rows){Array.new(columns){[" . "]}}
  end

  def print_matrix
    i = 0
    while i < rows
      puts @cells_matrix[i].join(" ")
      i = i+1
    end
  end

  def initial_position 
    @cells_matrix[1][4] = " * "
    @cells_matrix[2][4] = " * "
    @cells_matrix[2][3] = " * "
  end
end

board1 = Board.new(4, 8)

board1.initial_position
board1.print_matrix
