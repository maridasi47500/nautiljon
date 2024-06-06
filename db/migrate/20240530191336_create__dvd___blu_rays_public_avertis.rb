class CreateDvdBluRaysPublicAvertis < ActiveRecord::Migration[7.1]
  def change
    create_table :_dvd___blu_rays_public_avertis do |t|
      t.string :name

      t.timestamps
    end
  end
end