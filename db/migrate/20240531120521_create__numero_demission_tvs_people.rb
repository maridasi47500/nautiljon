class CreateNumeroDemissionTvsPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs_people do |t|
      t.string :name

      t.timestamps
    end
  end
end