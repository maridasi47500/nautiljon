json.extract! _jeux_videos_concour, :id, :name, :created_at, :updated_at
json.url _jeux_videos_concour_url(_jeux_videos_concour, format: :json)
