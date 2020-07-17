class CreateJoinTableDoctorSpecialties < ActiveRecord::Migration[6.0]
  def change
    create_table :join_table_doctor_specialties do |t|

      t.timestamps
    end
  end
end
