class SearchController < ApplicationController
  def index
    @stores = Store.find_nearby_stores(params[:search]).paginate(:page => params[:page], :per_page => 10)
    @total = Store.total(params[:search])
  end
end
