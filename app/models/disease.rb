class Disease < ActiveRecord::Base
	has_many :symptoms
end
