json.extract! _jeux_videos_quizz, :id, :name, :created_at, :updated_at
json.url _jeux_videos_quizz_url(_jeux_videos_quizz, format: :json)
