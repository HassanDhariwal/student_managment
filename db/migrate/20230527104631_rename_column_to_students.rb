class RenameColumnToStudents < ActiveRecord::Migration[5.1]
  def change
    
    rename_column("students", "f_name", "father_name")

  end
end
