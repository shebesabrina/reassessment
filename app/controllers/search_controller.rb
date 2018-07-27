class SearchController < ApplicationController
  def index
    @stores = StorePresenter.new(80202, 25)
  end
end
