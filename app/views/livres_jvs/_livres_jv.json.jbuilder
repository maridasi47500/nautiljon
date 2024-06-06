json.extract! _livres_jv, :id, :name, :created_at, :updated_at
json.url _livres_jv_url(_livres_jv, format: :json)
