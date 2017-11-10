require 'rails_helper'

describe "association with Registration" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:registration) { create :registration, event: event, user: guest_user }

  it "has registration" do
    expect(guest_user.registered_events).to include(event)
  end
end
