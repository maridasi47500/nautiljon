json.extract! _concert, :id, :date, :_concerts_artiste_id, :nom, :endroit, :adresse, :ville, :_concerts_pays_id, :infos, :lien, :prix, :heure, :acceptregles, :created_at, :updated_at
json.url _concert_url(_concert, format: :json)
