json.extract! _recette, :id, :nom, :_recettes_type_id, :image, :preparation, :cuisson, :nb_pers, :_recettes_plat_id, :_recettes_difficulte_id, :ingredients, :texte, :source, :comment, :acceptregles, :created_at, :updated_at
json.url _recette_url(_recette, format: :json)
