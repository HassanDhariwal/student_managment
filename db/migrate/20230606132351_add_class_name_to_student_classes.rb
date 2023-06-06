class AddClassNameToStudentClasses < ActiveRecord::Migration[5.1]
  def change
    add_column :student_classes, :grade, :integer
  end
end
