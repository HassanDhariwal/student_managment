class AddSectionRefrenceToStudent < ActiveRecord::Migration[5.1]
  def change
    add_reference :students, :section, foreign_key: true
  end
end
