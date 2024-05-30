class CreateDataCapturings < ActiveRecord::Migration[7.1]
  def change
    create_table :data_capturings do |t|
      t.integer :project_number
      t.text :full_name
      t.integer :age
      t.text :school
      t.text :participant_class
      t.text :course
      t.text :programme
      t.integer :level
      t.integer :contact_number

      t.timestamps
    end
  end
end
