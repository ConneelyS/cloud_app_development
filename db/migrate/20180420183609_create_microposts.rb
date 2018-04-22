class CreateMicroposts < ActiveRecord::Migration[5.2]
  def change
    create_table :microposts do |t|
      t.string :doctor_notes
      t.integer :patient_id

      t.timestamps
    end
  end
end
