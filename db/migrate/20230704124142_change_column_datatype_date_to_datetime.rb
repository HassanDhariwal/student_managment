class ChangeColumnDatatypeDateToDatetime < ActiveRecord::Migration[5.1]
  def change
    change_column("students", "date_of_birth", :datetime)
  end
end
