json.array!(@products) do |product|
  json.extract! product, :id, :title, :description, :price, :category, :pre-owned
  json.url product_url(product, format: :json)
end
