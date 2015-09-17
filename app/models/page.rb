class Page < ActiveRecord::Base
	belongs_to :category
	belongs_to :type
end
