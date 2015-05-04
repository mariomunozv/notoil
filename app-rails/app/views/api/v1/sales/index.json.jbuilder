json.array!(@sales) do |sale|
  json.extract! sale, :id, :name, :description, :total
  json.url sale_url(sale, format: :json)
end
