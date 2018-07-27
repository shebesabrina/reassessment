class BestBuyService
  def initialize(zip, radius)
    @zip = zip
    @radius = radius
    @conn = Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter  Faraday.default_adapter
    end
  end

  def find_stores
    response = @conn.get("/stores(area(#{zip},#{radius}))?format=json&show=storeId,storeType,name,city,region&apiKey=ENV['API_KEY']")
    JSON.parse(response.body, symbolize_names: true)[:results]
  end
end
