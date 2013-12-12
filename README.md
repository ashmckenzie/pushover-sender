# PushoverSender

Send push notifications via Pushover, nice and easy.

## Installation

Add this line to your application's Gemfile:

    gem 'pushover_sender'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pushover_sender

## Config

    $ cat ~/.pushover-sender.yml

    ---
    user_key: <PUSHOVER_USER_KEY>
    api_token: <PUSHOVER_API_TOKEN>

## Usage

    $ pushover-sender --title '<title of message>' "<message to send>"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
