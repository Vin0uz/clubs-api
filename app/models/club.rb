class Club < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name, using: { trigram: { threshold: 0.1 } }, ranked_by: ":trigram"

end
