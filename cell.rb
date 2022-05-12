# frozen_string_literal: true

# class for representing the cellular organism
class Cell
  attr_accessor(:stage, :neighbours)

  def initialize(stage)
    @stage = stage
    @neighbours = neighbours

    @live = false
  end

  def position_cell(cell); end

  def dead?
    !@live
  end

  def dead!
    @live = false
  end

  def live?
    @live
  end


end
