module GplayApiWrapper

  class AppmarkaApk < Base

    BASE = "appmarka_apk"

    def self.get(qs = {})
      build_and_send_request("", qs)
    end
  end
end
