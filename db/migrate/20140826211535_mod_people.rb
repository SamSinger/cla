class ModPeople < ActiveRecord::Migration
  def change
  	add_column :people, :department_id, :integer
  end
end
