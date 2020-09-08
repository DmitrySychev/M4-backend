class UserEventsController < ApplicationController
    skip_before_action :authorized

    def index
        @user_events = UserEvent.all
        render json: { user_events: @user_events }
    end
    
    def create
        current_user_id = current_user.id
        event_id = user_event_params['event_id']
        user_event = UserEvent.create(user_id: current_user_id, event_id: event_id)
        render json: { user_event: user_event }, status: :created
    end

    def destroy
        byebug
        @user_event = UserEvent.find(params[:id])
        @user_event.destroy
    end

    def show
        @user_event = UserEvent.find(params[:id])
    end

    private

    def user_event_params
        params.require(:user_event).permit(:event_id)
    end

end
