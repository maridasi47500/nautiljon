class CreateClipsLivesBonusConcerts < ActiveRecord::Migration[7.1]
  def change
    create_table :_clips___lives___bonus___concerts do |t|
      t.integer :_clips_lives_hbonus_concerts_type_id
      t.integer :_clips_lives_hbonus_concerts_type_bonus_id
      t.string :titre
      t.string :titre_original
      t.string :date_jj
      t.string :date_mm
      t.string :date_aaaa
      t.integer :_clips_lives_bonus_concerts_role_id
      t.integer :_clips_lives_bonus_concerts_people_id
      t.string :image
      t.string :youtube
      t.text :infos
      t.integer :_clips_lives_bonus_concerts_clip_id
      t.integer :_clips_lives_bonus_concerts_emission_tv_numero_id
      t.text :comment
      t.string :statut_prop
      t.string :acceptregles

      t.timestamps
    end
  end
end