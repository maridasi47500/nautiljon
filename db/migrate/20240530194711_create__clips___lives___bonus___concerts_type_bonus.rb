class CreateClipsLivesBonusConcertsTypeBonus < ActiveRecord::Migration[7.1]
  def change
    create_table :_clips___lives___bonus___concerts_type_bonus do |t|
      t.string :name

      t.timestamps
    end
  end
end