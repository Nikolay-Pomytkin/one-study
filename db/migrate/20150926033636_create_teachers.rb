class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.integer :school_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
