json.extract! _dramas_actualite, :id, :name, :created_at, :updated_at
json.url _dramas_actualite_url(_dramas_actualite, format: :json)
