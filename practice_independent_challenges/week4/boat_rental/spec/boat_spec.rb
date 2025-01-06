require './spec/spec_helper.rb'


RSpec.describe Boat do
  before(:each) do
    @kayak = Boat.new(:kayak, 20) 
  end

  describe 'initialize' do
    it 'exists' do
      expect(@kayak).to be_an_instance_of(Boat)
    end

    it 'has type of boat' do
      expect(@kayak.type).to eq(:kayak)
    end

    it 'has renter price per hour' do
      expect(@kayak.price_per_hour).to eq(20)
    end

    it 'starts with 0 hours rented' do
      expect(@kayak.hours_rented).to eq(0)
    end
  end

  describe 'methods' do
    it 'can add hours ' do
      @kayak.add_hour
      @kayak.add_hour
      @kayak.add_hour

      expect(@kayak.hours_rented).to eq(3)
    end
  end
end