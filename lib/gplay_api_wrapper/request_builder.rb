module GplayApiWrapper

  class RequestBuilder
    BASE_URL = "https://api-stage.gplay.io/api/v1"

    def self.build_request(path, qs = {})
      URI("#{BASE_URL}/#{path}?#{to_query(qs)}")
    end

  end
end
