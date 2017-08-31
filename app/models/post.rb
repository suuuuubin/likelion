class Post < ActiveRecord::Base
    resourcify
    belongs_to :user
    has_many :comments
end
