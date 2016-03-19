class DropDiseasesAndSymptomsTable < ActiveRecord::Migration
  def change
  	drop_table :symptoms
  	drop_table :diseases 
  end
end
