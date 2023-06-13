class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :section
      t.string :teacher_name
      t.integer :section_range

      t.timestamps
    end
  end
end
