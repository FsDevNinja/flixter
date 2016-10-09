class Lesson < ActiveRecord::Base
  belongs_to :section
  mount_uploader :video, VideoUploader
  
  validates :title, presence: true, length: { in: 6..35 }
  validates :subtitle, presence: true, length: { in: 6..200 }
  include RankedModel
  ranks :row_order, :with_same => :section_id
  
  def next_lesson
    lesson = section.lessons.where("row_order > ?", self.row_order).rank(:row_order).first
    if lesson.blank? && section.next_section
      return section.next_section.lessons.rank(:row_order).first
    end
    
    return lesson
  end
end
