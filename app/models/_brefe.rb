class Brefe < ApplicationRecord
self.table_name = "_breves"
belongs_to :anime, foreign_key:"_breves_anime_id", class_name:"Anime"
end
