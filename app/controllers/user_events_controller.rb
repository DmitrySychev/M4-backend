class UserEventsController < ApplicationController
    skip_before_action :authorized

    def index
        @user_events = UserEvent.all
        render json: { user_events: @user_events }
    end
    
    def create
        @user_event = UserEvent.create!(user_event_params)
        render json: { user_event: UserEventSerializer.new(@user_event) }, status: :created
    end

    def destroy
        @user_event = UserEvent.find(params[:id])
        @user_event.destroy
      end

    private

    def user_event_params
        params.require(:user_event).permit(:event_id, :user_id)
    end

end
