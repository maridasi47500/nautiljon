class Clips::Lives::Bonus::Concert < ApplicationRecord
self.table_name = "_clips___lives___bonus___concerts"
belongs_to :concerts_type, foreign_key: "_clips_lives_hbonus_concerts_type_id", class_name:"Clips::Lives::Bonus::ConcertsType"
def self.clips
  Clips::Lives::Bonus::Concert.all.includes(:concerts_type).where(concerts_type: {name: "Clip"})
end
end
