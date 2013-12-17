module PushoverSender
  class Command < Clamp::Command

    option "--version", :flag, "show version" do
      puts "pushover-sender #{PushoverSender::VERSION}"
      exit 0
    end

    option '--title', 'TITLE', 'Title of message', required: true
    parameter 'message', 'Message content', required: true

    def execute
      Notification.new.notify!(title, message)
    end
  end
end
