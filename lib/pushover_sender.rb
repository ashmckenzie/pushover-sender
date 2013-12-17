require 'pushover'
require 'hashie'
require 'delegate'
require 'yaml'
require 'singleton'

require 'pushover_sender/config'
require 'pushover_sender/notification'
require "pushover_sender/version"

module PushoverSender

  def self.configure!
    Pushover.configure do |c|
      c.user  = PushoverSender::Config.instance.user_key
      c.token = PushoverSender::Config.instance.api_token
    end
  end
end
