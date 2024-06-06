json.extract! _concerts_artiste, :id, :name, :created_at, :updated_at
json.url _concerts_artiste_url(_concerts_artiste, format: :json)
