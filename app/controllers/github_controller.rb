class GithubController < ApplicationController
    def index
    end
	
	def contri
		connection = Github.new(basic_auth: "#{params[:username]}:#{params[:password]}")
		@list=Github::Contributions::List.new(connection, params[:username])
    end

	def github_issue_params
      params.require(:github).permit(:username,:password)
    end
end
