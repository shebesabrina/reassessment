class BestBuyService

  attr_reader :zip

  def initialize(zip)
    @zip = zip
    @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def find_stores
    get_url("/v1/stores(area(#{zip},25))?format=json&show=name,city,PostalCode,storeType,phone,storeType&pageSize=10&cursorMark=*&apiKey=#{ENV['API_KEY']}")
  end

  def store_data
    find_stores[:stores]
  end

  def total_stores
    find_stores[:total]
  end

  private
  
  def get_url(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
