json.array!(@detail_sales) do |detail_sale|
  json.extract! detail_sale, :id, :name, :quantity, :valor, :sale_id, :product_id
  json.url detail_sale_url(detail_sale, format: :json)
end
