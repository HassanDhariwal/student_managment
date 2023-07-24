class RemoveColumnDateOfBirthTeacher < ActiveRecord::Migration[5.1]
  def change
    remove_column :teachers, :date_of_birth 
  end
end
