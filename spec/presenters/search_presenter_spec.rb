require 'rails_helper'

describe SearchPresenter do
  subject { SearchPresenter.new("foxes") }

  it 'exists' do
    expect(subject).to be_a(SearchPresenter)
  end

  describe 'instance methods' do
    it '#word' do
      expect(subject.word).to be_a Word
    end
  end


end
