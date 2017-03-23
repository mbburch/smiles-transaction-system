require 'rails_helper'

RSpec.describe Human, type: :model do
  it "has a default smile count of 0" do
    human = build(:human)
    expect(human.smile_count).to eq(0)
  end
end
