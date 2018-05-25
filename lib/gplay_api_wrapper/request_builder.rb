module GplayApiWrapper

  class RequestBuilder
    BASE_URL = "https://api-stage.gplay.io/api/v1"

    # za sada je jedino path promenljiv
    def self.get(path, qs = {})
      uri = URI("#{BASE_URL}/#{path}?#{qs.to_query}")
      send_get_request(uri)
    end

    def self.send_get_request(uri)
      response = Net::HTTP.get(uri)
      JSON.parse(response)
    end
  end
end
