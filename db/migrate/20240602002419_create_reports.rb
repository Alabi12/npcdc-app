class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :project_number
      t.text :name
      t.integer :age
      t.text :school
      t.text :participant_class
      t.text :course
      t.text :programme
      t.integer :level
      t.integer :contact

      t.timestamps
    end
  end
end
