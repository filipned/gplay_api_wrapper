module GplayApiWrapper

  class RequestBuilder
    BASE_URL = 'https://api-stage.gplay.io/api/v1'.freeze

    def self.build_request(path, qs = {})
      URI("#{BASE_URL}/#{path}?#{Util.to_query(qs)}")
    end

  end
end
