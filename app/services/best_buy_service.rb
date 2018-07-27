class BestBuyService

  attr_reader :zip, :radius

  def initialize(zip, radius)
    @zip = zip
    @radius = radius
    @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def find_stores
    get_url("/v1/stores(area(#{zip},#{radius}))?format=json&show=storeId,storeType,name,city,region&apiKey=#{ENV['API_KEY']}")
  end

  def get_url(url)
    response = @conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
