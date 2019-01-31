class DebManyPassport < ActiveRecord::Migration[5.2]
  def change
    add_column :debentures, :passport_1_id, :integer
    add_column :debentures, :passport_2_id, :integer
    add_index :debentures, :passport_1_id
    add_index :debentures, :passport_2_id

  end
end
