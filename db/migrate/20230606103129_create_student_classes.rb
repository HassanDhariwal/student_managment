class CreateStudentClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :student_classes do |t|
      t.string :section_name
      t.string :teacher_name
      t.string :student_name

      t.timestamps
    end
  end
end
