class Movie < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def self.search search
    where("title ILIKE ?", "%#{search}%")
  end
end
