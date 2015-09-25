class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text :info
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
