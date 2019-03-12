class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = convert(text)
  end

  def convert(text)
    alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  if vowels.include?(text[0])
    text + 'ay'
  elsif consonants.include?(text[0]) && consonants.include?(text[1])
    text[2..-1] + text[0..1] + 'ay'
  elsif consonants.include?(text[0])
    text[1..-1] + text[0] + 'ay'
  else
    text
  end
end

end
