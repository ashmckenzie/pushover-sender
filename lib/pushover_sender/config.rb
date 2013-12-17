module PushoverSender
  class Config < SimpleDelegator

    include Singleton

    def initialize
      raise %Q{'#{config_file}' does not exist!} unless File.exist?(config_file)
      config = YAML.load_file(config_file)
      super(Hashie::Mash.new(config))
    end

    private

      def config_file
        File.expand_path(File.join(ENV['HOME'], '.pushover-sender.yml'))
      end
  end
end
