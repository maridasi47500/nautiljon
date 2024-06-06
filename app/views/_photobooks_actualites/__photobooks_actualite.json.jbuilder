json.extract! _photobooks_actualite, :id, :name, :created_at, :updated_at
json.url _photobooks_actualite_url(_photobooks_actualite, format: :json)
