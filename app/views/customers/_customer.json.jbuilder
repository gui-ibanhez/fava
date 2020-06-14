json.extract! customer, :id, :name, :email, :address, :number, :neighborhood, :cep, :created_at, :updated_at
json.url customer_url(customer, format: :json)
