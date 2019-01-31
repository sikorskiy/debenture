class DebManyPass < ActiveRecord::Migration[5.2]
  def change
    add_reference :debentures, :passport, index: true
  end
end
