json.extract! _livres_anime, :id, :name, :created_at, :updated_at
json.url _livres_anime_url(_livres_anime, format: :json)
