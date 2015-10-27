class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :info
      t.string :city
      t.integer :zipcode
      t.string :state

      t.timestamps null: false
    end
  end
end
