class ChangeColumnIntegerToBigintTeacher < ActiveRecord::Migration[5.1]
  def change
        change_column("teachers", "phone_number", :bigint)
  end
end
