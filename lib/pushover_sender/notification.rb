module PushoverSender
  class Notification < Struct.new(:title, :message)

    def send!
      Pushover.notification(title: title, message: message)
    end
  end
end
