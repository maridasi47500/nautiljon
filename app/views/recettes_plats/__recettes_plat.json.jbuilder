json.extract! _recettes_plat, :id, :name, :created_at, :updated_at
json.url _recettes_plat_url(_recettes_plat, format: :json)
