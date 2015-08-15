require 'httparty'
require 'tilda/api/configuration'
require "tilda/api/errors"
require "tilda/api/request"
require "tilda/api/version"

module Tilda
  module Api
    class << self
      attr_writer :configuration
    end

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration)
    end
  end
end

