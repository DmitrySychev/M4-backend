class EventsController < ApplicationController
    skip_before_action :authorized

    def index
        @events = Event.all
        render json: { events: @events }
    end

    def create
        @event = Event.create!(event_params)
        render json: { event: EventSerializer.new(@event) }, status: :created
      end

    private

    def event_params
        params.require(:event).permit(:title, :description, :date, :category, :thumbnail, :user_id)
      end

end
