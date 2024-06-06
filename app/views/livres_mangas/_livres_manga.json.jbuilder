json.extract! _livres_manga, :id, :name, :created_at, :updated_at
json.url _livres_manga_url(_livres_manga, format: :json)
