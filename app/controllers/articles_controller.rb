class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = Article.all.order("created_at DESC")
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    if current_user != nil 
    end
    @article = Article.new(article_params)
    @article.user_id=current_user.id
    if @article.save
      redirect_to article_path(@article)
      flash[:notice] = "Successfully created article!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @article = Article.find(params[:id])
    puts("Trying to destroy article")
    if @article.discarded? 
      puts("About to undo")
      @article.undiscard
    else
      puts("About to discard")
      @article.discard
    end
    puts("Going to redirect")
    redirect_to root_path, notice: "Article was successfully deleted"
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
