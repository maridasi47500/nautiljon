json.extract! _boutique, :id, :nom, :image, :adresse, :tel, :description, :dept, :ville, :_boutiques_pays_id, :site, :acceptregles, :created_at, :updated_at
json.url _boutique_url(_boutique, format: :json)
