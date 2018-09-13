class SearchController < ApplicationController

  def index
    @presenter = SearchPresenter.new(params[:q])
    @word = params[:q]
    if @presenter.service.status == 200
      render :index
    elsif @presenter.service.status == 404
      render :invalid
    end
  end
end
