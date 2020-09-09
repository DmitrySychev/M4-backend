class User < ApplicationRecord
    has_many :user_events, dependent: :destroy
    has_many :events
    has_many :joined_events, through: :user_events, :source => :event
    
    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }


    def most_attended_event_type
        users_events = joined_events.map{|event| event.category}
        event_counts = {}
        users_events.each do |event|
            if event_counts[event]
                event_counts[event] += 1
            else
                event_counts[event] = 1
            end
        end
        counts_array = event_counts.max_by(3){|k,v| v}
        top_three_events = []
        top_three_events.push(counts_array[0][0], counts_array[1][0], counts_array[2][0])
    end





end
