require 'boris_bikes'

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  it {is_expected.to respond_to(:available_bikes)}

  it 'does release_bike return an instance of the Bike class' do
    subject.dock_bike(Bike.new)
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
  it 'does docking_station dock bike' do
    expect(subject).to respond_to(:dock_bike)
  end
  it 'docking process accepts a Bike as an argument' do
    expect(subject).to respond_to(:dock_bike).with(1).arguments
  end

    it 'raises an error when there are no bikes' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    it "#tells user dock is full, if bike already docked" do
      subject.dock_bike(Bike.new)
      expect { subject.dock_bike(Bike.new) }.to raise_error 'Dock full'
    end
  end

RSpec.describe Bike do
  it 'to responding to working? method' do
    expect(subject).to respond_to(:working?)
  end
  it 'does the bike work - true or false' do
    expect(subject.working?).not_to eq(nil)
  end
end
