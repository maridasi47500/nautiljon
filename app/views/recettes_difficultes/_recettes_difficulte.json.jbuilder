json.extract! _recettes_difficulte, :id, :name, :created_at, :updated_at
json.url _recettes_difficulte_url(_recettes_difficulte, format: :json)
