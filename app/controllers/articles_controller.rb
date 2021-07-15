class ArticlesController <ApplicationController
  # appcontroller 
  before_action :set_id, only: [:edit, :update, :destroy, :show, :downvote, :vote] #DRY code , it finds @article before going to this actions
  
  def index
    @articles =Article.all  
  end

  def new
    @article = Article.new
  end

  def edit 
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article, notice: "Successfully Created"
    else
      render 'new'
    end
  end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: "Successfully Updated"
    else 
      render 'edit'
    end
  end
 
  def destroy
    @article.destroy
    redirect_to articles_path
  end 

  def show
  end
  
  def vote 
    @article.liked_by current_user
    redirect_to articles_path 
 end

 def downvote
   @article.unliked_by current_user
   redirect_to articles_path
 end
 
 private
  def article_params
      params.require(:article).permit(:title, :text)
  end

  def set_id
    @article = Article.find(params[:id])
  end

 
end