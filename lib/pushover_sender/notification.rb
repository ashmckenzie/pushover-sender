module PushoverSender
  class Notification

    def initialize
      PushoverSender.configure!
    end

    def notify! title, message
      Pushover.notification(title: title, message: message)
    end
  end
end
