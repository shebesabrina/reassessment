class SearchController < ApplicationController
  def index
    @stores = Store.find_nearby_stores(params[:search])
    @total = Store.total(params[:search])
  end
end
