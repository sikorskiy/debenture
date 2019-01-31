class CreatePassports < ActiveRecord::Migration[5.2]
  def change
    create_table :passports do |t|
      t.string :name
      t.string :last_name
      t.string :middle_name
      t.string :issue_by
      t.date :issue_where
      t.string :serial
      t.string :number
      t.date :birth_date
      t.string :birth_place
      t.string :address_reg
      t.string :address_resident
      t.string :code

    end
  end
end
