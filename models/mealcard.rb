class MealCard
  attr_reader :id, :type

 MEALCARDS = []

  def initialize(fuck)
    @id = fuck[:id]
    @type = fuck[:type]

    MEALCARDS << self
  end

  def self.all
    MEALCARDS
  end

end
