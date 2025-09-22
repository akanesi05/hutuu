
class ArticlesController < ApplicationController
  def index
  if params[:genre].present?
    @articles = Article.where(genre: params[:genre])
  else
    @articles = Article.all
  end
  @genres = Article.distinct.pluck(:genre)
  end


  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: '記事が作成されました。'
    else
      flash.now[:alert] = '記事が作成されませんでした。'
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @article = Article.find(params[:id])
    #@articleの変数に1件のデータをArticleから取得して代入
  end

  def update
    @article = Article.find(params[:id]) 
    #@articleの変数に1件のデータをArticleから取得して代入
    if @article.update(article_params)
    #もし@articleの変数に1件のデータをArticleから取得して代入したものが更新されたら、詳細画面にとび記事を更新しました
    redirect_to @article, notice: "記事を更新しました"
    else
    render :edit, status: :unprocessable_entity
    #更新されなかったら編集画面に戻る
    end
  end





  def destroy
    @article = Article.find(params[:id])
    if @article.destroy
      redirect_to articles_path, notice: "記事を削除しました"
    else
      redirect_to article_path(@article), alert: "削除できませんでした"
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :genre)
  end
end
