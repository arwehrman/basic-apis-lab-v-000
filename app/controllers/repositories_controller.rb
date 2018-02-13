class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @stubbed_request = Faraday.get 'https://api.github.com/search/repositories' do |req|
      #req.params['client_id'] = client_id
      #req.params['client_secret'] = client_secret
      req.params['query'] = 'tetris'
    end
  end
end
