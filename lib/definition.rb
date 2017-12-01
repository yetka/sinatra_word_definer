class Definition
  attr_accessor :word_definition
  @@definition_list =[]


  def initialize(attributes)
    @word_definition = attributes.fetch(:word_definition)
  end

  def self.all()
    @@definition_list
  end

end
