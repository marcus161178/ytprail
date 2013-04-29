class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  
  
# before_filter :parse_raw_upload, :only => :add_files
  
  layout "bloglayout"
  def index
    
    if params[:page].blank? || params[:page].to_i == 1
    @recentpost = Post.first
    end
    
    @posts = Post.page(params[:page]).per(params[:page].blank? || params[:page].to_i == 1 ? 7 : 6 )
      
    
    
    
    @blogimage = BlogImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
    5.times { @post.blog_images.build }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
    5.times { @post.blog_images.build }
    
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
  
  #def add_files
  #    @blog_image = @post.blog_images.build(imagefile: @raw_file)
  #    if @blog_image.save
  #      render js: { success: true }
  #    else
  #     render js: { success: false }
  #    end
  #  end

  
  # private
  #  def parse_raw_upload
  #      if env['HTTP_X_FILE_UPLOAD'] == 'true'
  #        @raw_file = env['rack.input']
  #        @raw_file.class.class_eval { attr_accessor :original_filename, :content_type }
  #        @raw_file.original_filename = env['HTTP_X_FILE_NAME']
  #        @raw_file.content_type = env['HTTP_X_MIME_TYPE']
  #      end
  #  end
end
