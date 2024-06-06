json.extract! _jeux_videos_jv, :id, :name, :created_at, :updated_at
json.url _jeux_videos_jv_url(_jeux_videos_jv, format: :json)
