class AddUniquessToSectionColumnName < ActiveRecord::Migration[5.1]
  def change
    add_index :sections, :section, unique: true
  end
end
