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
        c.user  = config.user_key
        c.token = config.api_token
      end

      Pushover.notification(title: title, message: message)
    end

    private

      def config
        @config ||= begin
          Hashie::Mash.new(YAML.load_file(config_file))
        end
      end

      def config_file
        File.expand_path(File.join(ENV['HOME'], '.pushover-sender.yml'))
      end
  end
end
