class Word
  @@list =[]
  attr_accessor :name
  attr_accessor :definition
  attr_accessor :picture
  attr_reader :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = []
    @picture = []
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

  def self.find(id)
    word_id = id.to_i()
    @@list.each do |word|
      if word.id == word_id
        return word
      end
    end
  end

  def add_definition(definition)
    @definition.push(definition)
  end

  def self.sort()
    @@list.sort_by{ |word| word.name }
  end

end
