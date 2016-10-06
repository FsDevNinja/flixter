module StaticPagesHelper
  def course_tags_for_display(tags)
    tags.split(",").map(&:strip).sort_by(&:downcase)
    
  end
end
