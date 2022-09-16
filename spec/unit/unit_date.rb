require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(date: '01/01/2000-08:00PM')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end
