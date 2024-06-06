class CreateDvdBluRaysLitteratureAsiatiques < ActiveRecord::Migration[7.1]
  def change
    create_table :_dvd___blu_rays_litterature_asiatiques do |t|
      t.string :name

      t.timestamps
    end
  end
end