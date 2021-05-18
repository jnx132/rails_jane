class Api::ArticlesController < ApplicationController    
    def index      
    articles = Article.includes(:comments).all      
    render json: articles, include: [:comments]    
    end    
    
    def show      
    article = Article.includes(:comments).find(params[:id])      
    render json: article, include: [:comments]    
    end
end