class CreateNumeroDemissionTvsEmissionTvNumeros < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs_emission_tv_numeros do |t|
      t.string :name

      t.timestamps
    end
  end
end