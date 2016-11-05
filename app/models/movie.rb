class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.search search
    if search
      self.where("title ILIKE ?", "%#{search}%")
    else
      self.all.order('created_at DESC')
    end
  end
end
