class SearchController < ApplicationController
  def index
    @stores = StorePresenter.new
  end
end
