require './spec/spec_helper.rb'


RSpec.describe Dock do
  before(:each) do
    @dock = Dock.new('The Rowing Dock', 3)
    @kayak_1 = Boat.new(:kayak, 20)
    @kayak_2 = Boat.new(:kayak, 20)
    @sup_1 = Boat.new(:standup_paddle_board, 15)
    @patrick = Renter.new("Patrick Star", "4242424242424242")
    @eugene = Renter.new("Eugene Crabs", "1313131313131313")
  end

  describe 'initialize' do 
    it 'exists' do
      expect(@dock).to be_an_instance_of(Dock) 
    end

    it 'has a name' do
      expect(@dock.name).to eq('The Rowing Dock')
    end

    it 'has a max rental time' do
      expect(@dock.max_rental_time).to eq(3)
    end
  end

  describe 'rent' do
    it 'can rent' do
      @dock.rent(@kayak_1, @patrick)
      @dock.rent(@kayak_2, @patrick)
      @dock.rent(@sup_1, @eugene)

      expect(@dock.rental_log).to eq({@kayak_1 => @patrick, @kayak_2 => @patrick, @sup_1 => @eugene})
    end
  end
  describe 'rental_log' do
    it 'has has with card number and amount' do 
      @dock = Dock.new('The Rowing Dock', 3)
      @kayak_1 = Boat.new(:kayak, 20)
      @dock.rent(@kayak_1, @patrick)
      expect(@dock.charge(@kayak_1)).to eq({card_number: "4242424242424242", amount: 20})
    end

    it 'if longer than max rental time' do
      @dock = Dock.new('The Rowing Dock', 3)
      @kayak_1 = Boat.new(:kayak, 20)
      @kayak_1.add_hour
      @dock.rent(@kayak_1, @patrick)
      @dock.rent(@kayak_1, @patrick)
      @dock.rent(@kayak_1, @patrick)
      @dock.rent(@kayak_1, @patrick)


      expect(@dock.charge(@kayak_1)).to eq({card_number: "4242424242424242", amount: 60})
    end
  end
end

RSpec.describe Dock do
  before(:each) do
    @dock = Dock.new('The Rowing Dock', 3)
    @kayak_1 = Boat.new(:kayak, 20)
    @kayak_2 = Boat.new(:kayak, 20)
    @sup_1 = Boat.new(:standup_paddle_board, 15)
    @patrick = Renter.new("Patrick Star", "4242424242424242")
    @eugene = Renter.new("Eugene Crabs", "1313131313131313")
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_1, @patrick)
    @dock.rent(@kayak_2, @eugene)
    @dock.rent(@sup_1, @eugene)
  end

  describe 'return' do
    it 'can return boat' do
      @dock.return_boat(@kayak_1)
      expect(@kayak_1.rented?).to eq(false)
    end
  end

  describe 'log' do 
    it 'adds hours' do
      @dock.log_hour
    end
  end
end