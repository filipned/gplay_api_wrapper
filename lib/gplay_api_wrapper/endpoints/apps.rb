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

    # This is base call for this endpoint
    # def self.get(organization_id: -1,
    #     category_id: -1,
    #     term: "",
    #     limit: -1,
    #     offset: -1,
    #     price_min: -1,
    #     price_max: -1,
    #     sort: "",
    #     testable: -1)

      # qs = {
      #     organization_id: organization_id,
      #     category_id: category_id,
      #     term: "",
      #     limit: limit,
      #     offset: offset,
      #     price_min: price_min,
      #     price_max: price_max,
      #     sort: sort,
      #     testable: testable
      # }.reject do |_k, v|
      #   v == -1
      # end.join('&')
  end
end

