json.extract! request, :id, :customer_id, :mailing, :items, :delivery_date, :created_at, :updated_at
json.url request_url(request, format: :json)
