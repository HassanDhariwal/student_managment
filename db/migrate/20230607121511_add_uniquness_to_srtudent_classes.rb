class AddUniqunessToSrtudentClasses < ActiveRecord::Migration[5.1]
  def change
    add_index :student_classes, :section_name, unique: true
  end
end
