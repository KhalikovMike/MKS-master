OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '290209711141655', '256b523c213f1a716ec0794c77e0ecf8', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end