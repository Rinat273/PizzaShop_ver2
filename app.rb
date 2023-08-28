#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: "sqlite3", database: "pizzashop.db"}   # создаем подключение к базе данных

# создание модели
class Product < ActiveRecord::Base

end

get '/' do
  @products = Product.all
  
	erb :index		
end

get '/about' do
  erb :about
end
