require 'rails_helper'

describe SearchPresenter do
  subject { SearchPresenter.new("foxes") }

  it 'exists' do
    expect(subject).to be_a(SearchPresenter)
  end



end
