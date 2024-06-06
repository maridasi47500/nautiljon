json.extract! _video, :id, :titre, :_videos_id_cat_id, :url, :tags, :created_at, :updated_at
json.url _video_url(_video, format: :json)
