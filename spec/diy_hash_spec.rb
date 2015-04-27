require('rspec')
require('diy_hash')
require('pry')

describe(MyHash) do
  describe("#fetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      expect(test_hash.fetch("kitten")).to(eq("cute"))
    end
    it("retrieves a stored value by its key when multiple keys available") do
      test_hash = MyHash.new()
      test_hash.store("kitten", "cute")
      test_hash.store("dog", "extra-cute")
      expect(test_hash.fetch("dog")).to(eq("extra-cute"))
    end
  end
end


#{"cat" => "feline", }
