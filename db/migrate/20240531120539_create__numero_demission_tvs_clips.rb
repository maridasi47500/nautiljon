class CreateNumeroDemissionTvsClips < ActiveRecord::Migration[7.1]
  def change
    create_table :_numero_demission_tvs_clips do |t|
      t.string :name

      t.timestamps
    end
  end
end