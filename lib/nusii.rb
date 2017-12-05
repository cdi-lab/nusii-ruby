require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/object/blank'
require 'active_support/inflector'
require 'faraday'
require 'json'
require 'pry'

require "nusii/version"

require 'nusii/api_operations/connection'
require 'nusii/api_operations/base'
require 'nusii/api_operations/show'
require 'nusii/api_operations/index'
require 'nusii/api_operations/nested_index'

require 'nusii/crud/get'
require 'nusii/crud/list'

require 'nusii/utils/json_api_builder'

require 'nusii/nusii_error'
require 'nusii/request'
require 'nusii/response_object'
require 'nusii/resource'
require 'nusii/account'
require 'nusii/client'
require 'nusii/line_item'
require 'nusii/proposal'
require 'nusii/proposal_activity'
require 'nusii/section'

module Nusii
  extend self

  class << self
    attr_accessor :api_key, :user_agent

    def setup params
      @api_key     = params[:api_key]
      @user_agent  = params[:user_agent]
    end
  end
end
