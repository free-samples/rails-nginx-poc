class CustomFailureApp < Devise::FailureApp

  # You need to override respond to eliminate recall
  def respond
    if http_auth?
      http_auth
    else
      json_error_response
    end
  end

  def json_error_response
    self.status = 401
    self.content_type = "application/json"
    self.response_body = [ { message: 'Unauthorized' } ].to_json
  end
end