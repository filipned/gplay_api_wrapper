module GplayApiWrapper
  # Class for resolving "/apps" endpoint requests
  class Apps < Base

    # TODO: Consider adding instance variables with potential query params to class
    BASE = "apps"
    # This is base call for this endpoint
    def self.get(qs = {})
      build_and_send_request("", qs)
    end

    # Getting app by id
    def self.get_app(app_id, qs = {})
      build_and_send_request(app_id)
    end


    def self.get_app_versions(app_id, qs = {})
      build_and_send_request("#{app_id}/versions", qs)
    end

  end
end

