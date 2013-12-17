module PushoverSender
  class Command < Clamp::Command

    option "--version", :flag, "show version" do
      puts "pushover-sender #{PushoverSender::VERSION}"
      exit 0
    end

    option '--title', 'TITLE', 'Title of message', required: true
    parameter 'message', 'Message content', required: true

    def execute
      Pushover.configure do |c|
        c.user  = PushoverSender::Config.instance.user_key
        c.token = PushoverSender::Config.instance.api_token
      end

      Notification.new(title, message).send!
    end
  end
end
