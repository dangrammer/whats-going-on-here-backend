class CaptionSerializer < ActiveModel::Serializer
  attributes :id, :content, :likes, :formatted_date
  has_one :picture
end
