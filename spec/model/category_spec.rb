require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.new(name: 'Food', icon: 'https://source.unsplash.com/random/100x100', author_id: 1) }

  before { subject.save }

  it 'Name is required' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Icon is required' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'Author is required' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end
end
