class Burd
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def do_this_thing
    "I can see the model!"
  end

  def calculate_stuff
    @text.to_i * 3498
  end
end
