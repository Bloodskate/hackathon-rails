class Symptom < ActiveRecord::Base
  has_and_belongs_to_many :diseases

   def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    Symptom.all
  end
end
end
