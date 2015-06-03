class Barracks < Unit
  
  def initialize
    super(gold, food)
    @gold = 1000
    @food = 80  
  end


  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      return Peasant.new
    end
  end

  def can_train_peasant?
    gold >= 90 && food >= 5
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      return Footman.new
    end
  end

  def can_train_footman?
     gold >= 135 && food >= 2
  end
end
