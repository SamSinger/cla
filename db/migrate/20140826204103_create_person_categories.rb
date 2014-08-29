class CreatePersonCategories < ActiveRecord::Migration
  def change
    create_table :person_categories do |t|
    	t.integer :category_id, :person_id
    end
  end
end
