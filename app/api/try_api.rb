class TryAPI < Grape::API
	prefix 'api'
  version 'v1', vendor: 'trymachine'
  format :json
end
