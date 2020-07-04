json.extract! expense_kind, :id, :name, :created_at, :updated_at
json.url expense_kind_url(expense_kind, format: :json)
