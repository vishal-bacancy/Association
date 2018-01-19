class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
    	t.belongs_to :doctor, index: true
    	t.belongs_to :patient, index: true
      t.date :appointment_date
      t.time :appointment_time

      t.timestamps
    end
  end
end
