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

end
