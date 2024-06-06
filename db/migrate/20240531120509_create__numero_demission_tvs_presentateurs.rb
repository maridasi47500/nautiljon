class CreateNumeroDemissionTvsPresentateurs < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs_presentateurs do |t|
      t.string :name

      t.timestamps
    end
  end
end