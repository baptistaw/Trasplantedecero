class Patient < ActiveRecord::Base
	belongs_to :users
end
