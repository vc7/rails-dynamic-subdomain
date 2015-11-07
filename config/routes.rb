require 'subdomains'

Rails.application.routes.draw do
  constraints(Subdomains) do
    get '/' => 'posts#index'
  end

  root 'welcome#index'
end
