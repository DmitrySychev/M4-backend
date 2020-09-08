class UserEventsController < ApplicationController
    skip_before_action :authorized

    def index
        user_events = UserEvent.all
        render json: { user_id: current_user.id, user_events: user_events }
    end
    
    def create
        current_user_id = current_user.id
        event_id = user_event_params['event_id']
        user_event = UserEvent.create(user_id: current_user_id, event_id: event_id)
        render json: { user_event: user_event }, status: :created
    end

    def destroy
        user_events_by_event_id = UserEvent.select{|user_event| user_event.event_id == params[:id]}
        user_event_to_destroy = user_events_by_event_id.find{|user_event| user_event.user_id == current_user.id}
        byebug
        render json: { user_event: user_event_to_destroy}
        user_event_to_destroy.destroy
    end

    def show
        @user_event = UserEvent.find(params[:id])
    end

    private

    def user_event_params
        params.require(:user_event).permit(:event_id)
    end

end
