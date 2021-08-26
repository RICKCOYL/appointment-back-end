require 'rails_helper'

RSpec.describe Urgent, type: :model do
  # test for validations of listings
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:time) }
  it { should validate_presence_of(:details) }
end
