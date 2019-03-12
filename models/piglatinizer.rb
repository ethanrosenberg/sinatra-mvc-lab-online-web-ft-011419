class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text.upcase
  end

end
