class Word
  attr_reader :id,
              :root_word

  def initialize(results)
    @id = results[:id]
    @root_word = results[:lexicalEntries][0][:inflectionOf][0][:id]
  end

  # def parse_root_word
  #   return "'foxez' is not a valid word." if results.nil?
  #   return results[:lexicalEntries][0][:inflectionOf][0][:id] if results.length > 0
  # end
end
