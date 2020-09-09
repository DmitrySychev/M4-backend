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

        num_of_types = user_events.uniq.length
        counts_array = event_counts.max_by(num_of_types){|k,v| v}
        top_three_events = counts_array.flatten.select{|ele| ele.class == String}
    end





end
