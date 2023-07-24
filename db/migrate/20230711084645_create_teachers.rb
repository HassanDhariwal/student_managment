class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :gender
      t.string :date_of_birth
      t.string :string
      t.string :address
      t.string :qualification
      t.string :subject

      t.timestamps
    end
  end
end
