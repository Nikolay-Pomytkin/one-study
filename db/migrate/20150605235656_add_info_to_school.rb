class AddInfoToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :info, :text
  end
end
