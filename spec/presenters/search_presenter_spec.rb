require 'rails_helper'

describe SearchPresenter do
  subject { SearchPresenter.new("foxes") }

  it 'exists' do
    expect(subject).to be_a(SearchPresenter)
  end

  describe 'instance methods' do
    it '#words' do
      # expect(subject.word.count).to eq 1
      expect(subject.word.first).to be_a Word
    end
  end


end
