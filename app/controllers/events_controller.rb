class EventsController < ApplicationController
    skip_before_action :authorized

    def index
        @events = Event.all
        render json: { events: @events }
    end

    def create
        event = current_user.events.create(event_params)
        UserEvent.create(user_id: current_user.id, event_id: event.id)
        render json: { event: EventSerializer.new(@event) }, status: :created
    end

    def show
      @event = Event.find(params[:id])
      render json: {event: @event}
    end

    def my_events 
      joined_events = current_user.joined_events
      created_events = current_user.events
      render json: { created_events: created_events, joined_events: joined_events}
    end

    def destroy
      @event = Event.find(params[:id])
      @event.destroy
    end

    private

    def event_params
        params.require(:event).permit(:title, :description, :date, :category, :thumbnail, :user_id)
    end


end
