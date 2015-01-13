class RenamePersonCategoriesToCategoriesPeople < ActiveRecord::Migration
  def change
  	rename_table :person_categories, :categories_people
  end
end
