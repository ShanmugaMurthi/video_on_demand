class Episode < ApplicationRecord
  default_scope { order(sequence_number: :asc) }
  belongs_to :season
  validates_presence_of :title, :plot, :sequence_number
  validates_uniqueness_of :title
  validates :sequence_number, uniqueness: { scope: :season_id }
end
