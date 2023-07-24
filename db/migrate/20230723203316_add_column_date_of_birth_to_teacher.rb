class AddColumnDateOfBirthToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_column :teachers, :date_of_birth, :date
  end
end
