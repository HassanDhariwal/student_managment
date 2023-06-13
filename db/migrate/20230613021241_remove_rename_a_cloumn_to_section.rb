class RemoveRenameACloumnToSection < ActiveRecord::Migration[5.1]
  def change
    rename_column :sections, :section, :section_name
    remove_column :sections, :teacher_name

  end
end
