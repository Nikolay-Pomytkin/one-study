class AddDescriptionToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :description, :text
  end
end
