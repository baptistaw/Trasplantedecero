class Patient < ActiveRecord::Base
	belongs_to :users
	has_many :corevaluations
end
