class Caption < ApplicationRecord
  belongs_to :picture
  validates :content, presence: true

  def formatted_date
    if self.created_at.strftime('%Y') == Time.current.year.to_s
      self.created_at.strftime('%^b %-d')
    else
      self.created_at.strftime('%b %Y')
    end
  end

end
