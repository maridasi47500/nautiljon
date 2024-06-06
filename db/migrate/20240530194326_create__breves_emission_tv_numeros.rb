class CreateBrevesEmissionTvNumeros < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_emission_tv_numeros do |t|
      t.string :name

      t.timestamps
    end
  end
end