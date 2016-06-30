class User < ActiveRecord::Base
	has_many :movies
	has_many :tvs
	has_many :podcasts
end
