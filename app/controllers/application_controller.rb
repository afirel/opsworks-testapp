class ApplicationController < ActionController::API

  def show_details
    details = {
      hostname: `hostname -f`.strip
    }
    render json: details
  end

end
