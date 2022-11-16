require 'rails_helper'

RSpec.describe Purchase, type: :model do
  subject { Purchase.new(name: 'Food', amount: 10, author_id: 1) }

  before { subject.save }

  it 'Name is required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Amount is required' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'Amount should be integer' do
    subject.amount = '20'
    expect(subject).to_not be_valid
  end

  it 'Author is required' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end
end
