json.array!(@products) do |product|
  json.extract! product, :id, :barcode, :brand, :name, :description, :price, :price_net, :family_id
  json.url product_url(product, format: :json)
end
