require 'spec_helper'

module DukeOfUrl
  describe Normalizer do
    describe 'Alphabetizes URL parameters' do
      it 'works with homogeneous case' do
        url = 'example.com?z=26&a=1'
        expect(described_class.normalize url).to include('?a=1&z=26')
      end

      it 'works with heterogeneous case' do
        url = 'example.com?Z=26&a=1&Y=25'
        expect(described_class.normalize url).to include('Y=25&Z=26&a=1')
      end
    end
  end
end
