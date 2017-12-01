require('rspec')
require('word')
require('definition')

describe("Definition") do

  describe("#add_definition") do
    it("add definition to word") do
      new_word = Word.new({:name=> "neuron"})
      new_word.save()
      new_definition = Definition.new({:word_definition=> "a cell that is specialized to conduct nerve impulses"})
      expect(new_word.add_definition(new_definition)).to(eq([new_definition]))
    end
  end
end
