json.extract! _restaurant, :id, :nom, :image, :adresse, :tel, :description, :dept, :ville, :_restaurants_pays_id, :horaires, :creation, :site, :acceptregles, :created_at, :updated_at
json.url _restaurant_url(_restaurant, format: :json)
