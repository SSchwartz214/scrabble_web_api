class Word
  attr_reader :id,
              :root_word

  def initialize(results)
    @id = results[:id]
    @root_word = results[:lexicalEntries][0][:inflectionOf][0][:id]
  end
end
