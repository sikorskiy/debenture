class CreateDebentures < ActiveRecord::Migration[5.2]
  def change
    create_table :debentures do |t|
      t.date :create_date
      t.string :locality
      t.integer :sum

    end
  end
end
