class MyHash
  define_method(:initialize) do
    @the_hash = []
  end

  define_method(:store) do |key, value|
    @key = key
    @value = value

    #@the_hash = [@key, @value]
    @the_hash.push(@key,@value)

  end

  define_method(:fetch) do |key|
    @the_hash.at(@the_hash.index(@key)+1)
  end

end
