module GplayApiWrapper

  class RequestBuilder
    BASE_URL = 'https://api-stage.gplay.io/api/v1'.freeze

    def self.build_request(path, query_string = {})
      uri = URI("#{BASE_URL}/#{path}")
      uri.query = URI.encode_www_form(query_string)
      uri
    end
  end
end
