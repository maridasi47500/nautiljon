json.extract! evenement, :id, :titre, :description, :date, :date_fin, :heure, :prix, :ville, :lieu, :adresse, :evenements_pays_id, :lien, :site, :evenements_people_id, :acceptregles, :created_at, :updated_at
json.url evenement_url(evenement, format: :json)
