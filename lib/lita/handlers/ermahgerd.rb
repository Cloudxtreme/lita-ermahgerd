require "lita"
require "ermahgerd"

module Lita
  module Handlers
    class Ermahgerd < Handler
      route /^ermgd\s+(.+)/, :ermahgerd, help: { "ermgd TEXT" => "Translate TEXT into ermahgerd-speak" }

      def ermahgerd(response)
        response.reply(
          ::Ermahgerd.translate(response.matches.flatten.first)
        )
      end
    end

    Lita.register_handler(Ermahgerd)
  end
end