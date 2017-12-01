json.extract! product, :id, :product_type, :brand, :price, :stock, :created_at, :updated_at
json.url product_url(product, format: :json)
