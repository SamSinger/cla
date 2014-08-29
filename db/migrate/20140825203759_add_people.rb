class AddPeople < ActiveRecord::Migration
  def change
  	create_table :people do |t|
  		t.string :firstname
  		t.string :middlename
  		t.string :lastname
  		t.string :email
  		t.string :officeaddress
  		t.string :phone
  		t.string :interestareas
  		t.string :languagestaught
  		t.string :monday
  		t.string :tuesday
  		t.string :wednesday
  		t.string :thursday
  		t.string :friday

  		t.timestamps
  	end
  end
end
