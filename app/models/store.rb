class Store
  attr_accessor :name,
                :city,
                :distance,
                :phone,
                :type
  def initialize(attrs)
    @name = attrs[:name]
    @city = attrs[:city]
    @distance = attrs[:distance]
    @phone = attrs[:phone]
    @type = attrs[:type]
  end

  def self.find_nearby_stores(zip)
    # binding.pry
    raw_data = BestBuyService.new(zip).store_data
    raw_data.map do |data|
      Store.new(
        name: data[:name],
        city: data[:city],
        distance: data[:postalCode],
        phone: data[:phone],
        type: data[:storeType]
      )
    end
  end
end
