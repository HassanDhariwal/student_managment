class RenameColumnNameToStudentClasses < ActiveRecord::Migration[5.1]
  def change
    rename_column("student_classes", "student_name", "student_range")
  end
end
