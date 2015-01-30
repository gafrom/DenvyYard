class Option < ActiveRecord::Base
  belongs_to :playground
  validates :playground_id, presence: true
end
