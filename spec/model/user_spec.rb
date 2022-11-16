require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Rex', email: 'rex@soul.com', password: 'password') }

  before { subject.save }

  it 'Name is required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should not be less than 3 characters' do
    subject.name = 'Rx'
    expect(subject).to_not be_valid
  end

  it 'Name is more than 3 characters' do
    subject.name = 'Rex'
    expect(subject).to be_valid
  end

  it 'Email is required' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'Password is required' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end
