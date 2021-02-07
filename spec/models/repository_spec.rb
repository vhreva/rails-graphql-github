# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Repository, type: :model do
  context 'Test Repository class' do
    let(:repository) { described_class.new }

    subject { repository.execute('vhreva') }

    it 'should return data with username' do
      VCR.use_cassette 'github/repositories' do
        expect(subject.name).to eq('vhreva')
      end
    end

    # it "should return data with list of repositories" do
    #   VCR.use_cassette "github/repositories" do
    #     expect(subject.repositories.to eq({})
    #   end
    # end
  end
end
