class Student
  attr_reader :name, :grade, :meal_card

 STUDENTS = []

  def initialize(params)
    @name = params[:name]
    @grade = params[:grade]
    @meal_card = params[:meal_card]
    STUDENTS << self
  end

  def self.all
    STUDENTS
  end
end
