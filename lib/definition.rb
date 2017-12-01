class Definition
  attr_accessor :word_definition


  def initialize(attributes)
    @word_definition = attributes.fetch(:word_definition)
  end

end
