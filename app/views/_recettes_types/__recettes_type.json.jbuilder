json.extract! _recettes_type, :id, :name, :created_at, :updated_at
json.url _recettes_type_url(_recettes_type, format: :json)
