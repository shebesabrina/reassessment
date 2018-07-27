class SearchController < ApplicationController
  def index
    # binding.pry
    @stores = StorePresenter.new(params[:search])
  end
end
