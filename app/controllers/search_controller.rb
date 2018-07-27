class SearchController < ApplicationController
  def index
    # binding.pry
    @stores = Store.find_nearby_stores(params[:search])
    # @stores = StorePresenter.new(params[:search])
  end
end
