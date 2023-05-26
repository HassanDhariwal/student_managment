class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name 
      t.string :age
      t.string :f_name
      t.timestamps
    end
  end
end
