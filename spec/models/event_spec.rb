require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validatios" do
    it "is invalid without a event name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

  end
end

describe "association with user" do
  let(:user) { create :user }

  it "belongs to a user" do
    event = user.events.build(name: "Meet the..")

    expect(event.user).to eq(user)
  end
end
