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
