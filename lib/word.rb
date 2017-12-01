class Word
  @@list =[]
  attr_accessor :name
  attr_reader :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = []
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def save()
    @@list.push(self)
  end

  def self.clear()
    @@list = []
  end

end
