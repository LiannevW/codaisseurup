class Api::EventsController < Api::BaseController
skip_before_action :verify_authenticity_token

  def index
    events = Event.all
    render status: 200, json: events
  end

  def show
    event = Event.find(params[:id])

    render status: 200, json: event
  end

  def create
    event = @user.event.new(event_params)

    if event.save
      render status: 200, json: event
    else
      render status: 422, json: {
        errors: event.errors
      }.to_json
    end
end

private

def event_params
  params
    .require(:event)
    .permit(
      :name, :description, :location, :price, :capacity, :includes_food,
      :includes_drinks, :starts_at, :ends_at, :active, :user_id
    )
  end
end
