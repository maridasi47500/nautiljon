json.extract! _sites_dachat, :id, :nom, :url, :description, :_sites_dachats_pays_id, :acceptregles, :created_at, :updated_at
json.url _sites_dachat_url(_sites_dachat, format: :json)
