class PictureSerializer < ActiveModel::Serializer
  attributes :id, :img_url
  has_many :captions
end
