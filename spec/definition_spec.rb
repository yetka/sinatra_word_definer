require('rspec')
require('word')
require('definition')

describe("Definition") do

  describe("#word_definition") do
    it("returns the definition") do
      new_definition = Definition.new({:word_definition=> "a cell that is specialized to conduct nerve impulses"})
      expect(new_definition.word_definition()).to(eq("a cell that is specialized to conduct nerve impulses"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#add_definition") do
    it("add definition to word") do
      new_word = Word.new({:name=> "neuron"})
      new_word.save()
      new_definition = Definition.new({:word_definition=> "a cell that is specialized to conduct nerve impulses"})
      expect(new_word.add_definition(new_definition)).to(eq([new_definition]))
    end
  end
end
