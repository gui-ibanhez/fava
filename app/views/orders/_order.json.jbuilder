json.extract! order, :id, :customer_id, :value, :discount, :payment, :origin, :request_ahead, :created_at, :updated_at
json.url order_url(order, format: :json)
