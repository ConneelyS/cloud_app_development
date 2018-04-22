class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.date :date_birth
      t.string :phone
      t.string :infection
      t.string :injury
      t.string :observation

      t.timestamps
    end
  end
end
