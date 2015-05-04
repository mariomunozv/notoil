json.array!(@discounts) do |discount|
  json.extract! discount, :id, :name, :quantity, :product_id, :user_id
  json.url discount_url(discount, format: :json)
end
