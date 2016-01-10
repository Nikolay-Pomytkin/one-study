class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :info
      t.string :state
      t.string :city
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
