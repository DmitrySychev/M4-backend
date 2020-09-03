class User < ApplicationRecord
    has_many :user_events
    has_many :events
    has_many :joined_events, through: :user_events, :source => :event
    
    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }

end
