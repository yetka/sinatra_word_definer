class Definition
  attr_accessor :definition


  def initialize(attributes)
    @definition = attributes.fetch(:definition)
  end

end
