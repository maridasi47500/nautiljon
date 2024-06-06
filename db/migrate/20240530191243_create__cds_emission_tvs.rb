class CreateCdsEmissionTvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds_emission_tvs do |t|
      t.string :name

      t.timestamps
    end
  end
end