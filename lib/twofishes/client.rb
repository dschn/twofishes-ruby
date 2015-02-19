module Twofishes
  class Client
    # @see https://github.com/foursquare/twofishes/blob/master/docs/twofishes_requests.md

    # Geocodes a given string.
    #
    # @param [String] location
    # @param [Array] list of additional ResponseIncludes constants
    # @return [Twofishes::Result]
    #
    # @example
    #   Twofishes::Client.geocode('Zurich, Switzerland')
    #
    def self.geocode(location, includes: [])
      handle_response do
        request = GeocodeRequest.new(query: location, responseIncludes: includes)
        $twofishes_client.geocode(request)
      end
    end

    # Reverse geocodes lat/lng.
    #
    # @param [Array] latitude, longitude pair
    # @return [Twofishes::Result]
    # @example
    #   Twofishes::Client.reverse_geocode([47.3787733, 8.5273363])
    #
    def self.reverse_geocode(coordinates, includes: [])
      handle_response do
        point = GeocodePoint.new(lat: coordinates[0], lng: coordinates[1])
        request = GeocodeRequest.new(ll: point, responseIncludes: includes)
        $twofishes_client.reverseGeocode(request)
      end
    end

    private

    def self.handle_response
      Result.from_response(yield)
    rescue => e
      raise Twofishes::InvalidResponseError, e.message
    end
  end
end
