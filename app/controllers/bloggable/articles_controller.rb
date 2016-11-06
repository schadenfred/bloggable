# require_dependency "bloggable/application_controller"

module Bloggable

  class ArticlesController < ::ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]
    before_action :set_bloggable, only: :create
    before_action :authenticate_user!, except: [:show, :index]


    def index
      @articles = Article.all
    end

    def show
    end

    def new

      @article = Article.new
    end

    def edit
    end

    def create
      @article = Article.new(article_params.merge(bloggable_type: @bloggable.class.to_s, bloggable_id: @bloggable.id))
      if @article.save
        redirect_to @article, notice: 'Article was successfully created.'
      else
        render :new
      end
    end

    def update
      if @article.update(article_params)
        redirect_to @article, notice: 'Article was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to articles_url, notice: 'Article was successfully destroyed.'
    end

    private

      def set_bloggable
        url = URI(request.referrer).path.split("/articles").first.split("/")

        @bloggable = url[-2] ? url[-2].classify.safe_constantize.find(url[-1]) : current_user
      end

      def set_article
        @article = Article.friendly.find(params[:id])
      end

      def article_params
        params.require(:article).permit!#(:title, :text, :bloggable_id, :bloggable_type)
      end
  end
end
