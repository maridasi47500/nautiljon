json.extract! _fiche_univers_actualite, :id, :name, :created_at, :updated_at
json.url _fiche_univers_actualite_url(_fiche_univers_actualite, format: :json)
