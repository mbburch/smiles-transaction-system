require 'rails_helper'

RSpec.describe Transfer, type: :model do

  it "is valid with a human and a smile count" do
    transfer = build(:transfer)
    expect(transfer).to be_valid
  end

  it "is not valid without a human" do
    transfer = build(:transfer, human_id: nil)
    expect(transfer).to_not be_valid
  end

  it "is not valid without a smile count" do
    transfer = build(:transfer, smile_count: nil)
    expect(transfer).to_not be_valid
  end
end
