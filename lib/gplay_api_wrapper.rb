require "gplay_api_wrapper/version"
# base endpoint
require "gplay_api_wrapper/base"
# endpoints
require "gplay_api_wrapper/endpoints/age_restrictions"
require "gplay_api_wrapper/endpoints/apps"
require "gplay_api_wrapper/endpoints/appmarka_apk"
require "gplay_api_wrapper/endpoints/articles"
require "gplay_api_wrapper/endpoints/faq_items"
require "gplay_api_wrapper/endpoints/help_categories"

# request processing
require "gplay_api_wrapper/request_resolver"
require "gplay_api_wrapper/request_builder"
require "gplay_api_wrapper/util"
require "net/http"
require "json"


