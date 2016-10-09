class Course < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_one :image
  belongs_to :user
  has_many :sections
  has_many :enrollments
  validates :title, presence: true, length: { in: 6..35 }
  validates :description, presence: true, length: { in: 6..200 }
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
  
  def free?
    cost.zero?
  end
  
  def premium?
    ! free?
  end
end
