class AddEmailPhoneToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :phone_number, :string
    add_column :students, :email, :string
  end
end
