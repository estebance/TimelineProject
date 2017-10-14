require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'has a valid factory' do
    expect(build(:post)).to be_valid
  end

  describe 'validations' do

    context 'presence' do

      it 'is invalid without a title' do
        expect(build(:post, title: nil)).to_not be_valid
      end

      it 'is invalid without a content' do
        expect(build(:post, content: nil)).to_not be_valid
      end

    end


    context 'length' do

      it 'is invalid when the title is too large' do
        expect(build(:post, title: Faker::Lorem.characters(201))).to_not be_valid
      end

      it 'is invalid when the content is too large' do
        expect(build(:post, content: Faker::Lorem.characters(201))).to_not be_valid
      end


    end


  end


end
