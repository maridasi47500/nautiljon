class CreateNumeroDemissionTvsIdEmissionTvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs_id_emission_tvs do |t|
      t.string :name

      t.timestamps
    end
  end
end