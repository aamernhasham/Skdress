json.array!(@products) do |product|
  json.extract! product, :id, :description, :price
  json.url product_url(product, format: :json)
end
