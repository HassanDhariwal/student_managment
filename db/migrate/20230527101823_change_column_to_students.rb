class ChangeColumnToStudents < ActiveRecord::Migration[5.1]
  def change
    change_column("students", "age", :integer)
  end
end
