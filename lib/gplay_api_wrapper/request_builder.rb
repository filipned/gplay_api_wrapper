module GplayApiWrapper

  class RequestBuilder
    BASE_URL = 'https://api-stage.gplay.io/api/v1'.freeze

    def self.build_request(path, query_string = {})
      begin
        URI("#{BASE_URL}/#{path}/?#{Util.to_query(query_string)}")
      rescue URI::InvalidURIError => e
        e
      end
    end
  end
end
