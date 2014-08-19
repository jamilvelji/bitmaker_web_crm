require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

get '/' do
	@crm_app_name = "My CRM"
	erb :index
end

get '/contacts' do
	@contacts = []
	@contacts << Contact.new("Jamil", "Velji", "Jamil@jamilvelji.com", "I am awesome")
	@contacts << Contact.new("Karim", "Velji", "karimvelji@gmail.com", "Brother")
	@contacts << Contact.new("Tanisara", "Yampraserd", "tanisaray@gmail.com", "Fiance")
	erb :contacts
end

get '/contacts/new' do
end