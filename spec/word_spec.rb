require('rspec')
require('word')

describe("Word") do
  before() do
    Word.clear()
  end

  describe("#name") do
    it("returns the name of the word") do
      new_word = Word.new({:name=> "neuron"})
      expect(new_word.name()).to(eq("neuron"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves new word to the list") do
      new_word = Word.new({:name=> "neuron"})
      new_word.save()
      expect(Word.all()).to(eq([new_word]))
    end
  end

  describe(".clear") do
    it("clears all words from the list") do
      new_word = Word.new({:name=> "neuron"})
      new_word.save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("increments an id by 1 each time a new word is added") do
      new_word1 = Word.new({:name=> "neuron"})
      new_word1.save()
      new_word2 = Word.new({:name=> "cerebellum"})
      new_word2.save()
      expect(new_word1.id()).to(eq(1))
      expect(new_word2.id()).to(eq(2))
    end
  end

  describe(".find") do
    it("finds new word based on its id") do
      new_word1 = Word.new({:name=> "neuron"})
      new_word1.save()
      new_word2 = Word.new({:name=> "cerebellum"})
      new_word2.save()
      expect(Word.find(1)).to(eq(new_word1))
      expect(Word.find(2)).to(eq(new_word2))
    end
  end

  describe(".sort") do
    it("sort the words alphabetically") do
      new_word1 = Word.new({:name=> "neuron"})
      new_word1.save()
      new_word2 = Word.new({:name=> "cerebellum"})
      new_word2.save()
      expect(Word.sort()).to(eq([new_word2,new_word1]))
    end
  end

  describe("#picture") do
    it("it is empty in the beginning") do
      new_word = Word.new({:name=> "neuron"})
      expect(new_word.picture()).to(eq([]))
    end
  end


end
