class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
