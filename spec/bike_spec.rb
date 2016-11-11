require 'bike'

describe Bike do

  it 'bike is confirmed working' do
    expect(subject).to respond_to :working?
  end

  it 'bike can be reported as not working' do
    subject.report_broken
    expect(subject.working?).to eq false
    end

end
