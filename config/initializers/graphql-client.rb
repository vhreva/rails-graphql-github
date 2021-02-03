require "graphql/client"
require "graphql/client/http"

if ENV['GITHUB_ACCESS_TOKEN'].present?
	module SWAPI
		# Configure GraphQL endpoint using the basic HTTP network adapter.
		HTTP = GraphQL::Client::HTTP.new('https://api.github.com/graphql') do
			def headers(context)
				{ 
					"Authorization" => "Bearer #{ENV['GITHUB_ACCESS_TOKEN']}"
				}
			end
		end  

		Schema = GraphQL::Client.load_schema(HTTP)

		Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
	end
end