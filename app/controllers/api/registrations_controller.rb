class Api::RegistrationsController < Api::BaseController
  skip_before_action :verify_authenticity_token
  before_action :set_event

  def create
    registration = @event.registrations.create(registration_params)

    if registration.save
      render status: 200, json: {
        message: "Thank you for registration!",
        event: @event,
        registration: registration
      }.to_json
    else
      render status: 422, json: {
        message: "registration could not be created",
        errors: registration.errors
      }.to_json
    end
  end

  def destroy
    registration = @event.registrations.find(params[:id])
    registration.destroy

    render status: 200, json: {
      message: "Registration succesfully deleted",
      event: @event,
      registration: @registration
    }.to_json
  end

  private

  def registration_params
    params.require(:registration).permit(:status, :price, :guest_count, :event_id)
  end

  def set_event
    @event = Event.find(params[:event_id])
  end
end
