class CreateDvdBluRaysEmissionTvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_dvd___blu_rays_emission_tvs do |t|
      t.string :name

      t.timestamps
    end
  end
end