require "./firecrystal/*"
require "uri"

module Firecrystal
  class Client

    def initialize(@firebase_url : String)
      uri = URI.parse(firebase_url)
      if uri.scheme != "https"
        raise ArgumentError.new("Base URI must be valid https uri")
      end
    end

  end
end
