class Cell 
  attr_accessor(:stage, :neighbours)
  
  def initialize(stage, neighbours)
    @stage = stage 
    @neighbours = neighbours

    @live = false
  end
  
  def position_cell(cell)
    
  end

  def dead?
    !@live
  end

  def dead!
    @live = false
  end

  def live?
    @live
  end

  def neighbours?
    neighbours = []
    neighbours.<<(@board.cell(self.x - 1, self.y - 1))
    neighbours.<<(@board.cell(self.x - 1, self.y))
    neighbours.<<(@board.cell(self.x - 1, self.y + 1))

    neighbours.<<(@board.cell(self.x, self.y - 1))
    neighbours.<<(@board.cell(self.x, self.y + 1))

    neighbours.<<(@board.cell(self.x + 1, self.y - 1))
    neighbours.<<(@board.cellt(self.x + 1, self.y))
    neighbours.<<(@board.cell(self.x + 1, self.y + 1))

    neighbours
  end
end
