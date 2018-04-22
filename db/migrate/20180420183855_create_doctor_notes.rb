class CreateDoctorNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_notes do |t|
      t.string :content
      t.integer :patient_id

      t.timestamps
    end
  end
end
