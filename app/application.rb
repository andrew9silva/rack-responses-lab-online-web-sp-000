class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour

    if time < 12
      resp.write "Good morning."
    else time > 12
      resp.write "Good afternoon."
    end
    resp.finish
  end

end
