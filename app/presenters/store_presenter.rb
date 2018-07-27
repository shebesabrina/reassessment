class StorePresenter
  def initialize(zip)
    # binding.pry
    @service = BestBuyService.new(zip)
  end

  def first_stores
    @service.store_data
  end
end
