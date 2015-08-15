module Tilda
  module Api
    class Configuration
      attr_accessor :api_version
      attr_accessor :public_key
      attr_accessor :secret_key

      def initialize
        @api_version = "v1"
      end
    end
  end
end
