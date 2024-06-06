json.extract! _jeux_videos_sondage, :id, :name, :created_at, :updated_at
json.url _jeux_videos_sondage_url(_jeux_videos_sondage, format: :json)
