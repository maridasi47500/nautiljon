class CreatePersonnagesDeJeuxVideos < ActiveRecord::Migration[7.1]
    def change
          create_table :_personnages_de_jeux_videos do |t|
                  t.string :nom
                        t.string :nom_alternatif
                              t.string :nom_suite
                                    t.string :nom_original
                                          t.integer :_personnages_de_jeux_videos_jv_id
                                                t.string :jouable
                                                      t.string :muet
                                                            t.integer :_personnages_de_jeux_videos_doubleur_pays_id
                                                                  t.integer :_personnages_de_jeux_videos_doubleur_people_id
                                                                                t.integer :_personnages_de_jeux_videos_doubleur_role_id
                                                                              t.integer :_personnages_de_jeux_videos_jv_perso_id
                                                                                    t.integer :_personnages_de_jeux_videos_perso_id
                                                                                          t.integer :_personnages_de_jeux_videos_perso_plus_id
                                                                                                t.integer :_personnages_de_jeux_videos_perso_manga_id
                                                                                                      t.integer :_personnages_de_jeux_videos_goodies_id
                                                                                                            t.string :image
                                                                                                                  t.text :description
                                                                                                                        t.text :comment
                                                                                                                              t.string :statut_prop
                                                                                                                                    t.string :acceptregles

                                                                                                                                          t.timestamps
                                                                                                                                              end
            end
end
