class AddBloodGroupToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :blood_group, :string
  end
end
