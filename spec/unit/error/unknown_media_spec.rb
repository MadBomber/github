# encoding: utf-8

require 'spec_helper'

RSpec.describe Github::Error::UnknownMedia do
  describe '#message' do
    let(:error) { described_class.new('README.md') }

    it 'contains the problem in the message' do
      expect(error.message).to include "Unknown content type for: 'README.md' provided for this request."
    end

    it 'contains the summary in the message' do
      expect(error.message).to include "Github gem infers the content type of the resource by calling the mime-types gem type inference."
    end

    it 'contains the resolution in the message' do
      expect(error.message).to include "Please install mime-types gem to infer the resource content type."
    end
  end
end # Github::Error::UnkownMedia
