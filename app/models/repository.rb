# frozen_string_literal: true

module GitHub
  Query = SWAPI::Client.parse <<-'GRAPHQL'
		query($username: String!){
			user(login: $username){
				name,
				repositories(first: 100, orderBy: {field: PUSHED_AT, direction: DESC}){
					nodes{
						name
					}
				}
			}
		}
  GRAPHQL
end

class Repository
  def execute(username)
    response = SWAPI::Client.query(GitHub::Query, variables: { username: username })
    response.data.user
  end
end
