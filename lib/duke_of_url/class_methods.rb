
require 'hashie'
require 'postrank-uri'

module DukeOfUrl
  class Normalizer
    DEFAULT_OPTIONS = { }

    attr_reader :normalized_url, :options, :url

    def self.normalize(url)
      new(url).normalize
    end

    def initialize(url, options = {})
      @url     = url
      @options = DEFAULT_OPTIONS.merge options
    end

    def normalize
      modified_url     = PointRank::URI.clean url
      alphabetized_url = alphabetize_params modified_url
    end

    private

      def alphabetize_params(url)
        params = url
          .gsub(/^[^\?]/, '')
          .split('&')
          .inject (Hashie::Mash.new) do |result, param|
            (key, value) = param.split('=')
            result[key] = value
            result
          end

        param_string = params.keys
          .sort
          .inject('') do |result, key|
            result << "#{key}=#{params[key]}"
          end
      end
  end
end
