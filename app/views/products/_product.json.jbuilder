json.extract! product, :id, :nome, :tipo, :preco, :created_at, :updated_at
json.url product_url(product, format: :json)
