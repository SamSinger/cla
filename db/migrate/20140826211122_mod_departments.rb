class ModDepartments < ActiveRecord::Migration
  def change
  add_column :departments, :name, :string
  add_column :departments, :list_order, :integer
    
  end
end
