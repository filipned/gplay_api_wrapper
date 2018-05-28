module GplayApiWrapper

  class AppmarkaApk < Base

    BASE = 'appmarka_apk'.freeze

    def self.get(query_string = {})
      build_and_send_request('', query_string)
    end
  end
end
