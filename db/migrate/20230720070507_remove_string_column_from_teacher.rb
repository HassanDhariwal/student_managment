class RemoveStringColumnFromTeacher < ActiveRecord::Migration[5.1]
  def change
        remove_column :teachers, :string
  end
end
