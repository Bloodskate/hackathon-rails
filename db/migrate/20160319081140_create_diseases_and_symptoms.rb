class CreateDiseasesAndSymptoms < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
    	t.string :name
    end
    create_table :symptoms do |t|
    	t.string :name
    end
    create_table :diseases_symptoms, id: false do |t|
    	t.belongs_to :disease, index: true
    	t.belongs_to :symptom, index: true
    end
  end
end
