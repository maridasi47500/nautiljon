Rails.application.routes.draw do
  resources :amvs
  resources :amvs_amvs
  resources :amvs_jvs
  resources :amvs_animes
  resources :amvs_groupes
  resources :amvs_conventions
  resources :amvs_types
  resources :amvs_makers
  resources :_volumes_mangas
  resources :_volumes
  resources :_volumes_illustrations
  resources :_volumes_types
  resources :_volumes_lns
  resources :_videos
  resources :_videos_id_cats
  resources :_tablatures
  resources :_tablatures_people
  resources :_sites_dachats
  resources :_sites_dachats_pays
  resources :_restaurants
  resources :_restaurants_pays
  resources :_recettes
  resources :_recettes_difficultes
  resources :_recettes_plats
  resources :_recettes_types
  resources :_petites_annonces
  resources :_petites_annonces_lieus
  resources :_petites_annonces_pays
  resources :_petites_annonces_sections
  resources :_personnalites
  resources :_personnalites_people_plus
  resources :_personnalites_people
  resources :_personnalites_id_travauxes
  resources :_personnalites_id_galeries
  resources :_personnalites_ex_fins
  resources :_personnalites_ex_debuts
  resources :_personnalites_exes
  resources :_personnalites_id_membres
  resources :_personnalites_roles
  resources :_personnalites_agences_exes
  resources :_personnalites_agences_fins
  resources :_personnalites_agences_debuts
  resources :_personnalites_agences
  resources :_personnalites_labels_exes
  resources :_personnalites_labels_fins
  resources :_personnalites_labels_debuts
  resources :_personnalites_labels
  resources :_personnalites_genres
  resources :_personnalites_statuts
  resources :_personnalites_pays
  resources :_personnalites_sexes
  resources :_personnalites_type_people
  resources :_personnage_de_mangas
  resources :_personnage_de_mangas_goodies
  resources :_personnage_de_mangas_jv_persos
  resources :_personnage_de_mangas_perso_plus
  resources :_personnage_de_mangas_persos
  resources :_personnage_de_mangas_perso_mangas
  resources :_personnage_de_mangas_mangas
  resources :_personnages_de_jeux_videos
  resources :_personnages_de_jeux_videos_goodies
  resources :_personnages_de_jeux_videos_perso_mangas
  resources :_personnages_de_jeux_videos_perso_plus
  resources :_personnages_de_jeux_videos_persos
  resources :_personnages_de_jeux_videos_jv_persos
  resources :_personnages_de_jeux_videos_doubleur_roles
  resources :_personnages_de_jeux_videos_doubleur_people
  resources :_personnages_de_jeux_videos_doubleur_pays
  resources :_personnages_de_jeux_videos_jvs
  resources :_personnage_danimes
  resources :_personnage_danimes_goodies
  resources :_personnage_danimes_jv_persos
  resources :_personnage_danimes_perso_mangas
  resources :_personnage_danimes_perso_plus
  resources :_personnage_danimes_persos
  resources :_personnage_danimes_doubleur_roles
  resources :_personnage_danimes_doubleur_people
  resources :_personnage_danimes_doubleur_pays
  resources :_personnage_danimes_animes
  resources :_personnage_danimes_sexes
  resources :_paroles
  resources :_paroles_paroles
  resources :_paroles_staff_people
  resources :_paroles_staff_roles
  resources :_numero_demission_tvs
  resources :_numero_demission_tvs_clips
  resources :_numero_demission_tvs_emission_tv_numeros
  resources :_numero_demission_tvs_people
  resources :_numero_demission_tvs_presentateurs
  resources :_numero_demission_tvs_specials
  resources :_numero_demission_tvs_id_emission_tvs
  resources :_mangas
  resources :_mangas_clips
  resources :_mangas_people
  resources :_mangas_concours
  resources :_mangas_quizzs
  resources :_mangas_sondages
  resources :_mangas_actualite_minis
  resources :_mangas_cultures
  resources :_mangas_actualites
  resources :_mangas_artbooks
  resources :_mangas_litterature_asiatique_plus
  resources :_mangas_litterature_asiatiques
  resources :_mangas_am_plus
  resources :_mangas_ams
  resources :_mangas_jv_plus
  resources :_mangas_jvs
  resources :_mangas_drama_plus
  resources :_mangas_dramas
  resources :_mangas_manga_plus
  resources :_mangas_mangas
  resources :_mangas_ln_plus
  resources :_mangas_lns
  resources :_mangas_anime_plus
  resources :_mangas_animes
  resources :_mangas_groupes
  resources :_mangas_commerces
  resources :_mangas_public_avertis
  resources :_mangas_societe_people
  resources :_mangas_societe_roles
  resources :_mangas_staff_people
  resources :_mangas_staff_roles
  resources :_mangas_prepublies
  resources :_mangas_editeurs_vf_collections
  resources :_mangas_editeurs_vfs
  resources :_mangas_editeurs_vos
  resources :_mangas_encours_vfs
  resources :_mangas_encours_vos
  resources :_mangas_themes
  resources :_mangas_genres
  resources :_mangas_types
  resources :_mangas_pays
  resources :_livres
  resources :_livres_jv_plus
  resources :_livres_jvs
  resources :_livres_people
  resources :_livres_actualite_minis
  resources :_livres_cultures
  resources :_livres_actualites
  resources :_livres_goodies
  resources :_livres_litterature_asiatique_plus
  resources :_livres_litterature_asiatiques
  resources :_livres_am_plus
  resources :_livres_ams
  resources :_livres_drama_plus
  resources :_livres_dramas
  resources :_livres_manga_plus
  resources :_livres_mangas
  resources :_livres_ln_plus
  resources :_livres_lns
  resources :_livres_anime_plus
  resources :_livres_animes
  resources :_livres_groupes
  resources :_livres_public_avertis
  resources :_livres_pays_themes
  resources :_livres_themes
  resources :_livres_genres
  resources :_livres_editeurs_vfs
  resources :_livres_editeurs_vos
  resources :_livres_staff_people
  resources :_livres_staff_roles
  resources :_livres_statut_publications
  resources :_livres_pays
  resources :_livres_type_secondaires
  resources :_livres_types
  resources :_light_novels
  resources :_light_novels_quizzs
  resources :_light_novels_actualite_minis
  resources :_light_novels_cultures
  resources :_light_novels_actualites
  resources :_light_novels_artbooks
  resources :_light_novels_osts
  resources :_light_novels_litterature_asiatique_plus
  resources :_light_novels_litterature_asiatiques
  resources :_light_novels_am_plus
  resources :_light_novels_ams
  resources :_light_novels_jv_plus
  resources :_light_novels_jvs
  resources :_light_novels_drama_plus
  resources :_light_novels_dramas
  resources :_light_novels_ln_plus
  resources :_light_novels_lns
  resources :_light_novels_manga_plus
  resources :_light_novels_mangas
  resources :_light_novels_anime_plus
  resources :_light_novels_animes
  resources :_light_novels_groupes
  resources :_light_novels_commerces
  resources :_light_novels_public_avertis
  resources :_light_novels_societe_people
  resources :_light_novels_societe_roles
  resources :_light_novels_staff_people
  resources :_light_novels_staff_roles
  resources :_light_novels_prepublies
  resources :_light_novels_editeurs_vf_collections
  resources :_light_novels_editeurs_vfs
  resources :_light_novels_editeurs_vos
  resources :_light_novels_encours_vfs
  resources :_light_novels_encours_vos
  resources :_light_novels_themes
  resources :_light_novels_genres
  resources :_light_novels_pays
  resources :_jeux_videos
  resources :_jeux_videos_topics
  resources :_jeux_videos_people
  resources :_jeux_videos_concours
  resources :_jeux_videos_quizzs
  resources :_jeux_videos_sondages
  resources :_jeux_videos_amvs
  resources :_jeux_videos_doujins
  resources :_jeux_videos_cds
  resources :_jeux_videos_osts
  resources :_jeux_videos_cultures
  resources :_jeux_videos_litterature_asiatique_plus
  resources :_jeux_videos_litterature_asiatiques
  resources :_jeux_videos_artbooks
  resources :_jeux_videos_dvds
  resources :_jeux_videos_univers
  resources :_jeux_videos_drama_plus
  resources :_jeux_videos_dramas
  resources :_jeux_videos_am_plus
  resources :_jeux_videos_ams
  resources :_jeux_videos_jv_plus
  resources :_jeux_videos_jvs
  resources :_jeux_videos_manga_plus
  resources :_jeux_videos_mangas
  resources :_jeux_videos_ln_plus
  resources :_jeux_videos_lns
  resources :_jeux_videos_anime_plus
  resources :_jeux_videos_animes
  resources :_jeux_videos_actualite_minis
  resources :_jeux_videos_actualites
  resources :_jeux_videos_groupes
  resources :_jeux_videos_staff_people
  resources :_jeux_videos_staff_roles
  resources :_jeux_videos_staff_societes
  resources :_jeux_videos_staff_societe_roles
  resources :_jeux_videos_genres
  resources :_jeux_videos_themes
  resources :_jeux_videos_etats
  resources :_jeux_videos_pays
  resources :_jeux_videos_pays_dates
  resources :_jeux_videos_plateformes
  resources :_generiques
  resources :_generiques_generics
  resources :_generiques_staff_people
  resources :_generiques_staff_roles
  resources :_generiques_types
  resources :_generiques_id_animes
  resources :_generique_de_jeu_videos
  resources :_generique_de_jeu_videos_jv_generics
  resources :_generique_de_jeu_videos_jvs
  resources :_generique_de_jeu_videos_staff_people
  resources :_generique_de_jeu_videos_staff_roles
  resources :_generique_de_jeu_videos_types
  resources :_films_asiatiques
  resources :_films_asiatiques_artbooks
  resources :_films_asiatiques_dvds
  resources :_films_asiatiques_concours
  resources :_films_asiatiques_quizzs
  resources :_films_asiatiques_sondages
  resources :_films_asiatiques_cds
  resources :_films_asiatiques_doujins
  resources :_films_asiatiques_osts
  resources :_films_asiatiques_actualite_minis
  resources :_films_asiatiques_emission_tv_plus
  resources :_films_asiatiques_emission_tvs
  resources :_films_asiatiques_cultures
  resources :_films_asiatiques_actualites
  resources :_films_asiatiques_litterature_asiatique_plus
  resources :_films_asiatiques_litterature_asiatiques
  resources :_films_asiatiques_people
  resources :_films_asiatiques_univers
  resources :_films_asiatiques_cinemas
  resources :_films_asiatiques_am_plus
  resources :_films_asiatiques_ams
  resources :_films_asiatiques_jv_plus
  resources :_films_asiatiques_jvs
  resources :_films_asiatiques_drama_plus
  resources :_films_asiatiques_dramas
  resources :_films_asiatiques_manga_plus
  resources :_films_asiatiques_mangas
  resources :_films_asiatiques_ln_plus
  resources :_films_asiatiques_lns
  resources :_films_asiatiques_anime_plus
  resources :_films_asiatiques_animes
  resources :_films_asiatiques_groupes
  resources :_films_asiatiques_generiques_paroles
  resources :_films_asiatiques_generiques_clips
  resources :_films_asiatiques_generiques_people2s
  resources :_films_asiatiques_generiques_people
  resources :_films_asiatiques_generiques_types
  resources :_films_asiatiques_editeurs_vfs
  resources :_films_asiatiques_editeurs_vf_roles
  resources :_films_asiatiques_acteurs
  resources :_films_asiatiques_types
  resources :_films_asiatiques_societe_people
  resources :_films_asiatiques_societe_roles
  resources :_films_asiatiques_staff_people
  resources :_films_asiatiques_staff_roles
  resources :_films_asiatiques_themes
  resources :_films_asiatiques_genres
  resources :_films_asiatiques_pays
  resources :_films_asiatiques_origines
  resources :_films_asiatiques_en_salles
  resources :_films_asiatiques_en_salles_actualite_minis
  resources :_films_asiatiques_en_salles_actualites
  resources :_films_asiatiques_en_salles_dramas
  resources :_films_asiatiques_en_salles_ams
  resources :_films_asiatiques_en_salles_animes
  resources :_films_asiatiques_en_salles_acteurs
  resources :_films_asiatiques_en_salles_types
  resources :_films_asiatiques_en_salles_staff_people
  resources :_films_asiatiques_en_salles_staff_roles
  resources :_films_asiatiques_en_salles_genres
  resources :_films_asiatiques_en_salles_pays_origines
  resources :_films_asiatiques_en_salles_langues
  resources :_films_asiatiques_en_salles_pays
  resources :_fiche_univers
  resources :_fiche_univers_cultures
  resources :_fiche_univers_actualite_minis
  resources :_fiche_univers_actualites
  resources :_fiche_univers_people
  resources :_fiche_univers_litterature_asiatiques
  resources :_fiche_univers_ams
  resources :_fiche_univers_dramas
  resources :_fiche_univers_jv_persos
  resources :_fiche_univers_jvs
  resources :_fiche_univers_doujinshis
  resources :_fiche_univers_lns
  resources :_fiche_univers_perso_mangas
  resources :_fiche_univers_mangas
  resources :_fiche_univers_persos
  resources :_fiche_univers_animes
  resources :_fiche_univers_univers
  resources :_fiche_univers_groupes
  resources :_fiche_univers_cats
  resources :_dramas
  resources :_dramas_emission_tv_plus
  resources :_dramas_emission_tvs
  resources :_dramas_artbooks
  resources :_dramas_dvds
  resources :_dramas_cds
  resources :_dramas_doujins
  resources :_dramas_osts
  resources :_dramas_actualite_minis
  resources :_dramas_cultures
  resources :_dramas_actualites
  resources :_dramas_litterature_asiatique_plus
  resources :_dramas_litterature_asiatiques
  resources :_dramas_univers
  resources :_dramas_am_plus
  resources :_dramas_ams
  resources :_dramas_jv_plus
  resources :_dramas_jvs
  resources :_dramas_drama_plus
  resources :_dramas_dramas
  resources :_dramas_manga_plus
  resources :_dramas_mangas
  resources :_dramas_ln_plus
  resources :_dramas_lns
  resources :_dramas_anime_plus
  resources :_dramas_animes
  resources :_dramas_groupes
  resources :_dramas_generiques_paroles
  resources :_dramas_generiques_clips
  resources :_dramas_generiques_people2s
  resources :_dramas_generiques_people
  resources :_dramas_generiques_types
  resources :_dramas_programmes
  resources :_dramas_editeurs_vfs
  resources :_dramas_editeurs_vf_roles
  resources :_dramas_acteurs
  resources :_dramas_types
  resources :_dramas_societe_people
  resources :_dramas_societe_roles
  resources :_dramas_staff_people
  resources :_dramas_staff_roles
  resources :_dramas_themes
  resources :_dramas_genres
  resources :_dramas_pays
  resources :_dramas_encours
  resources :_dramas_origines
  resources :_doujinshis
  resources :_doujinshis_people
  resources :_doujinshis_quizzs
  resources :_doujinshis_jv_persos
  resources :_doujinshis_perso_mangas
  resources :_doujinshis_perso_plus
  resources :_doujinshis_persos
  resources :_doujinshis_actualite_minis
  resources :_doujinshis_cultures
  resources :_doujinshis_actualites
  resources :_doujinshis_artbooks
  resources :_doujinshis_litterature_asiatique_plus
  resources :_doujinshis_litterature_asiatiques
  resources :_doujinshis_am_plus
  resources :_doujinshis_ams
  resources :_doujinshis_jv_plus
  resources :_doujinshis_jvs
  resources :_doujinshis_drama_plus
  resources :_doujinshis_dramas
  resources :_doujinshis_doujinshi_plus
  resources :_doujinshis_doujinshis
  resources :_doujinshis_ln_plus
  resources :_doujinshis_lns
  resources :_doujinshis_manga_plus
  resources :_doujinshis_mangas
  resources :_doujinshis_anime_plus
  resources :_doujinshis_animes
  resources :_doujinshis_groupes
  resources :_doujinshis_gratuits
  resources :_doujinshis_censures
  resources :_doujinshis_public_avertis
  resources :_doujinshis_staff_people
  resources :_doujinshis_roles
  resources :_doujinshis_conventions
  resources :_doujinshis_genres_avertis
  resources :_doujinshis_themes
  resources :_doujinshis_genres
  resources :_doujinshis_types
  resources :_doujinshis_pays
  resources :_doujinshis_origines
  resources :_doujinshis_frances
  resources :_doujins
  resources :_doujins_artbooks
  resources :_doujins_doujins
  resources :_doujins_jvs
  resources :_doujins_ams
  resources :_doujins_dramas
  resources :_doujins_lns
  resources :_doujins_animes
  resources :_doujins_groupes
  resources :_doujins_genres
  resources :_doujins_people
  resources :_doujins_roles
  resources :_doujins_conventions
  resources :_concerts_pays
  resources :_concerts_artistes
  namespace :_clips_ do
    namespace :_lives_ do
      namespace :_bonus_ do
        resources :_concerts
        resources :_concerts_emission_tv_numeros
        resources :_concerts_clips
        resources :_concerts_people
        resources :_concerts_roles
        resources :_concerts_type_bonus
        resources :_concerts_types
      end
    end
  end

  resources :_breves_cultures
  resources :_breves_societes
  resources :_breves_jv_societes
  resources :_breves_anime_studios
  resources :_breves_manga_editeurs
  resources :_breves_concours
  resources :_breves_quizzs
  resources :_breves_sondages
  resources :_breves_emission_tv_numeros
  resources :_breves_emission_tvs
  resources :_breves_clips
  resources :_breves_amvs
  resources :_breves_osts
  resources :_breves_cds
  resources :_breves_recettes
  resources :_breves_concerts
  resources :_breves_evenements
  resources :_breves_cinemas
  resources :_breves_goodies
  resources :_breves_photobooks
  resources :_breves_artbooks
  resources :_breves_dvds
  resources :_breves_jvs
  resources :_breves_beau_livres
  resources :_breves_magazines
  resources :_breves_livre_jeunesses
  resources :_breves_litterature_asiatiques
  resources :_breves_ams
  resources :_breves_dramas
  resources :_breves_mangas
  resources :_breves_lns
  resources :_breves_animes
  resources :_breves_people
  resources :_breves_actualite_minis
  resources :_breves_actualites
  resources :_breves_cats
  resources :breves, controller: "breves", path: "breves"
  resources :_boutiques
  resources :_boutiques_pays
  resources :_photobooks
  resources :_photobooks_goodies
  resources :_photobooks_actualite_minis
  resources :_photobooks_actualites
  resources :_photobooks_bonus
  resources :_photobooks_animes
  resources :_photobooks_photobooks
  resources :_photobooks_cds
  resources :_photobooks_ams
  resources :_photobooks_dramas
  resources :_photobooks_groupes
  resources :_photobooks_public_avertis
  resources :_photobooks_societe_people
  resources :_photobooks_societe_roles
  resources :_photobooks_people
  resources :_photobooks_roles
  resources :_photobooks_editeurs_vfs
  resources :_photobooks_editeurs_vos
  resources :_photobooks_types
  resources :_photobooks_illustrations
  resources :_photobooks_disponibilites
  resources :_photobooks_pays
  resources :_photobooks_frances
  resources :_goodies
  resources :_goodies_actualite_minis
  resources :_goodies_actualites
  resources :_goodies_litterature_asiatiques
  resources :_goodies_bonus
  resources :_goodies_clips
  resources :_goodies_goodies
  resources :_goodies_people
  resources :_goodies_osts
  resources :_goodies_cds
  resources :_goodies_dvds
  resources :_goodies_doujinshis
  resources :_goodies_photobooks
  resources :_goodies_artbooks
  resources :_goodies_ams
  resources :_goodies_dramas
  resources :_goodies_lns
  resources :_goodies_jv_persos
  resources :_goodies_jvs
  resources :_goodies_perso_mangas
  resources :_goodies_mangas
  resources :_goodies_persos
  resources :_goodies_animes
  resources :_goodies_groupes
  resources :_goodies_public_avertis
  resources :_goodies_societe_people
  resources :_goodies_societe_roles
  resources :_goodies_staff_people
  resources :_goodies_staff_roles
  resources :_goodies_editeurs_vfs
  resources :_goodies_editeurs_vos
  resources :_goodies_matieres
  resources :_goodies_pays
  resources :_goodies_types
  namespace :_dvd_ do
    resources :_blu_rays
    resources :_blu_rays_actualite_minis
    resources :_blu_rays_actualites
    resources :_blu_rays_emission_tvs
    resources :_blu_rays_people
    resources :_blu_rays_jvs
    resources :_blu_rays_litterature_asiatiques
    resources :_blu_rays_ams
    resources :_blu_rays_dramas
    resources :_blu_rays_animes
    resources :_blu_rays_groupes
    resources :_blu_rays_public_avertis
    resources :_blu_rays_editeurs
    resources :_blu_rays_type_editions
    resources :_blu_rays_formats
    resources :_blu_rays_pays
    resources :_blu_rays_frances
  end
  resources :_cds
  resources :_cds_mangas
  resources :_cds_bonus
  resources :_cds_emission_tvs
  resources :_cds_jvs
  resources :_cds_ams
  resources :_cds_dramas
  resources :_cds_lns
  resources :_cds_animes
  resources :_cds_cds
  resources :_cds_groupes
  resources :_cds_distributeurs
  resources :_cds_labels
  resources :_cds_people
  resources :_cds_roles
  resources :_cds_monnaies
  resources :_cds_types
  resources :artbooks
  resources :artbooks_cultures
  resources :artbooks_actualite_minis
  resources :artbooks_actualites
  resources :artbooks_doujins
  resources :artbooks_goodies
  resources :artbooks_artbooks
  resources :artbooks_litterature_asiatiques
  resources :artbooks_ams
  resources :artbooks_dramas
  resources :artbooks_jvs
  resources :artbooks_doujinshis
  resources :artbooks_lns
  resources :artbooks_mangas
  resources :artbooks_animes
  resources :artbooks_groupes
  resources :artbooks_public_avertis
  resources :artbooks_societe_people
  resources :artbooks_societe_roles
  resources :artbooks_people
  resources :artbooks_roles
  resources :artbooks_editeurs_vfs
  resources :artbooks_editeurs_vos
  resources :artbooks_types
  resources :artbooks_illustrations
  resources :artbooks_pays
  resources :artbooks_frances
  resources :evenements
  resources :evenements_people
  resources :evenements_pays
  resources :animes
  resources :animes_topics
  resources :animes_quizzs
  resources :animes_cinemas
  resources :animes_amvs
  resources :animes_doujins
  resources :animes_cds
  resources :animes_osts
  resources :animes_cultures
  resources :animes_litterature_asiatique_plus
  resources :animes_litterature_asiatiques
  resources :animes_photobooks
  resources :animes_artbooks
  resources :animes_dvds
  resources :animes_people
  resources :animes_drama_plus
  resources :animes_dramas
  resources :animes_am_plus
  resources :animes_ams
  resources :animes_jv_plus
  resources :animes_jvs
  resources :animes_manga_plus
  resources :animes_mangas
  resources :animes_ln_plus
  resources :animes_lns
  resources :animes_anime_plus
  resources :animes_animes
  resources :animes_actualite_minis
  resources :animes_actualites
  resources :animes_groupes
  resources :animes_editeurs_vfs
  resources :animes_editeurs_vf_roles
  resources :animes_public_avertis
  resources :animes_societe_people
  resources :animes_societe_roles
  resources :animes_staff_people
  resources :animes_staff_roles
  resources :animes_themes
  resources :animes_genres
  resources :animes_pays
  resources :animes_encours
  resources :animes_origines
  resources :animes_formats
  resources :osts
  resources :osts_emission_tvs
  resources :osts_osts
  resources :osts_jvs
  resources :osts_ams
  resources :osts_dramas
  resources :osts_lns
  resources :osts_animes
  resources :osts_groupes
  resources :osts_distributeurs
  resources :osts_labels
  resources :osts_people
  resources :osts_roles
  resources :osts_monnaies
  resources :osts_plateformes
  resources :osts_types
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
