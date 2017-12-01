require('rspec')
require('word')

describe("Word") do

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


end
