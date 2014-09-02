class Gallery < ActiveRecord::Base
	has_many :paintings
	validates :title, presence: true
end