class Picture < ApplicationRecord
  has_many :captions, dependent: :destroy
  validates :img_url, presence: true

end
