class RenameSectionColumnNameToSections < ActiveRecord::Migration[5.1]
  def change
    rename_column("sections", "section_range", "student_range")
  end
end
