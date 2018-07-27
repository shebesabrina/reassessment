class StorePresenter
  def initialize(zip, radius)
    @service = BestBuyService.new(zip, radius)
  end

  def first_stores
    @service.store_data
  end
end
