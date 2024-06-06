json.extract! _mangas_actualite, :id, :name, :created_at, :updated_at
json.url _mangas_actualite_url(_mangas_actualite, format: :json)
