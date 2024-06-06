class CreateAnimesEditeursVfRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_editeurs_vf_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end