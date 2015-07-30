class PostsController < ApplicationController
<<<<<<< HEAD
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :author_select, only: [:new, :edit, :update, :create]

  # GET /posts
  # GET /posts.json
  def index

    if params[:author_id]
      @posts = Post.where("author_id =?", params[:author_id]).order("created_at DESC").all
      # @title = "Posts by #{@posts[0].author.show_name}"
    else
      @posts = Post.order("created_at DESC").all
      @title = "The Dead Writer's Delorean"
      @subheading = "A blogging medium for your favorite authors who have already kicked the bucket."
    end
  end

  def self.count
    Post.all.count
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
=======
  def index #index usually shows a list
    @posts = Post.all
    @title = "The Dead Writer's Delorean"
    @subheading = "A blogging medium for your favorite authors who have already kicked the bucket."
  end

  def show_first
    @post = Post.all.first
    @title = @post.title
    @subheading = @post.summary
  end

  def show
    @post = Post.find(params[:id].to_i)
>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab
    @title = @post.title
    @subheading = @post.summary
  end

<<<<<<< HEAD
  def show_first
    @post = Post.order("created_at DESC").first
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def author_select
      @author_options = Author.all.collect{|author| [author.show_name, author.id]}
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :summary, :author_id, :published)
    end
=======
  def by_author
    @posts = Post.posts_by_author(params[:last_name].capitalize)
    @title = "Posts by #{@posts[0].author.show_name}"
  end

>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab
end
