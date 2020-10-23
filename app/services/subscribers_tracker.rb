class SubscribersTracker
  def self.current_subscribers_count(channel_name)
    new(channel_name).current_subscribers_count
  end

  def initialize(channel_name)
    @channel_name = channel_name
  end

  def subscribe
    redis_server.set(channel_name, current_subscribers_count + 1)
  end

  def unsubscribe
    redis_server.set(channel_name, current_subscribers_count - 1)
  end

  def current_subscribers_count
    redis_server.get(channel_name).to_i
  end

  private

  attr_reader :channel_name

  def redis_server
    @redis_server ||= Redis.new
  end
end
