json.extract! _livres_actualite, :id, :name, :created_at, :updated_at
json.url _livres_actualite_url(_livres_actualite, format: :json)
