class AddColumnToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :gender, :string
    add_column :students, :guardian_no, :string
    add_column :students, :date_of_birth, :date
  end
  def down
    remove_column :students, :gender 
    remove_column :students, :guardian_no 
    remove_column :students, :date_of_birth 
  end  
end
