class TestmeController < ApplicationController
  def index
    p "\n\n\n\n\n\n WHAT?????"
    p browser.to_s
    @info = request.env['HTTP_USER_AGENT'] + ' ' +
    request.remote_ip + ' ' +
    request.env['REMOTE_ADDR']
    p @info
    p "\n\n\n\n\n\n WHAT?????"
    @track_id = SecureRandom.uuid
  end
end
