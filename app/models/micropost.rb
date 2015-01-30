class Micropost < ActiveRecord::Base
  belongs_to :playground
  validates :playground_id, presence: true
  validates :content, presence: true

end
