json.extract! expense, :id, :kind_of_expense, :obs, :value, :created_at, :updated_at
json.url expense_url(expense, format: :json)
