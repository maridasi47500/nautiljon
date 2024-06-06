json.extract! _jeux_videos_actualite, :id, :name, :created_at, :updated_at
json.url _jeux_videos_actualite_url(_jeux_videos_actualite, format: :json)
