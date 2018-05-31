module GplayApiWrapper
  # Class for resolving "/apps" endpoint requests
  class Apps < Base

    # TODO: Consider adding instance variables with potential query params to class or pass hash as param to get function

    BASE = 'apps'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end

    # Getting app by id
    def self.get_app(app_id, query_string = {})
      build_and_send_request(app_id, query_string)
    end

    # Getting app by id V2
    def self.get_app_v2(app_id)
      build_and_send_request(app_id)
    end

    def self.get_app_versions(app_id, query_string = {})
      build_and_send_request("#{app_id}/versions", query_string)
    end
  end
end

