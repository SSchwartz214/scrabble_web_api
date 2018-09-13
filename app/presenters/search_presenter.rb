class SearchPresenter

  def initialize(word)
    @word = word
  end

  def word
    Word.new(service.book_results)
  end

  def service
    OxfordService.new(@word)
  end
end
