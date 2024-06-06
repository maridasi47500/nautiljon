class CreateSitesDachats < ActiveRecord::Migration[7.1]
  def change
    create_table :_sites_dachats do |t|
      t.string :nom
      t.string :url
      t.text :description
      t.integer :_sites_dachats_pays_id
      t.string :acceptregles

      t.timestamps
    end
  end
end