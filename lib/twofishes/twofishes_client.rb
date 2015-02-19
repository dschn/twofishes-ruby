require 'connection_pool'
require 'thrift_client'

$twofishes_client = ConnectionPool::Wrapper.new(timeout: Twofishes.configuration.timeout) {
  ThriftClient.new(
    Geocoder::Client,
    Twofishes.configuration.address,
    retries: Twofishes.configuration.retries,
    timeout: Twofishes.configuration.timeout
  )
}
