class ChangeColumnBigintToLongTeacher < ActiveRecord::Migration[5.1]
  def change
    change_column("teachers", "phone_number", :long )
  end
end
