class LoadController < ActionController::API
  def simulate
    duration = (rand(2000).to_f / 1000) # up to 2 seconds
    begin
      Timeout::timeout(duration) do
        while true
          100.times do |i|
            100000.downto(1) do |j|
              Math.sqrt(j) * i / 0.2
            end
          end
        end
      end
    rescue Timeout::Error
      # ignored
    end

    Event.create(title: 'load simulation', details: {duration: duration}).tap do |event|
      render json: event
    end
  end
end
