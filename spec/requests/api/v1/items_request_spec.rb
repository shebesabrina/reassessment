require 'rails_helper'

describe "Items API" do
  it "sends a list of items" do
    create_list(:item, 3)

    get "/api/v1/items"

    expect(response).to be_successful

    items = JSON.parse(response.body)

    expect(items.count).to eq(3)

#     When I send a GET request to `/api/v1/items`
#   I receive a 200 JSON response containing all items
#   And each item has an id, name, description, and image_url but not the created_at or updated_at
  end

  it "can get one item by its id" do
    id = create(:item).id

    get "/api/v1/items/#{id}"

    item = JSON.parse(response.body)

    expect(response).to be_successful
    expect(item["id"]).to eq(id)

#     When I send a GET request to `/api/v1/items/1`
#   I receive a 200 JSON response containing the id, name, description, and image_url but not the created_at or updated_at
  end

  it "can destroy an item" do
    item = create(:item)

    expect(Item.count).to eq(1)

    delete "/api/v1/items/#{item.id}"

    expect(response).to be_successful
    expect(Item.count).to eq(0)
    expect{Item.find(item.id)}.to raise_error(ActiveRecord::RecordNotFound)
#     When I send a DELETE request to `/api/v1/items/1`
#   I receive a 204 JSON response if the record is successfully deleted
  end

  it "can create a new item" do
    item_params = { name: "Saw", description: "I want to play a game" }

    post "/api/v1/items", params: {item: item_params}
    item = Item.last

    assert_response :success
    expect(response).to be_successful
    expect(item.name).to eq(item_params[:name])
    #   When I send a POST request to `/api/v1/items` with a name, description, and image_url
    # I receive a 201 JSON  response if the record is successfully created
    # And I receive a JSON response containing the id, name, description, and image_url but not the created_at or updated_at
  end
end
