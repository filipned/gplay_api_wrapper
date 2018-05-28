module GplayApiWrapper

  # Encapsulates request processing logic common for all endpoints
  class Base

    def self.build_and_send_request(specific_path = '', query_string = {})
      request = RequestBuilder.build_request(get_path(specific_path), query_string)
      RequestResolver.get(request)
    end

    def self.get_path(specific_path)
      "#{self::BASE}/#{specific_path}"
    end
  end
end
