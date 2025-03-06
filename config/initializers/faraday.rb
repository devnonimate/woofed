# Faraday.default_adapter = :net_http

Faraday.default_connection = Faraday.new do |faraday|
  faraday.options.timeout = ENV.fetch('HTTP_TIMEOUT', '5').to_i
  faraday.options.open_timeout = ENV.fetch('HTTP_TIMEOUT', '5').to_i
end
