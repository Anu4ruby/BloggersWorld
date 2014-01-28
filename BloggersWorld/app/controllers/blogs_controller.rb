class BlogsController < ApplicationController
    
     
    before_filter :authorize_user!, :except => [:index, :show]
    
    def index
        
        @blogs = Blog.all
        ajax_no_layout
        
    end
    
    # def few_blogs
    #    @blogs = [Blog.first, Blog.last]
    #    render :index
    # end
    
    def show
        @blog = Blog.find(params[:id])
        # @comment = Comment.new( :blog => @blog )
        Visit.track(@blog, request.remote_ip)
        
    end
    
    def new
        @blog = Blog.new
        # @comments = Comment.all.map{|user| [user.name, user.id]}
    end
    
    def edit
        @blog = Blog.find(params[:id])
        # @comments = Comment.all.map{|user| [user.name, user.id]}
    end
    
    def create
        @blog = Blog.new(params[:blog])
        if @blog.save
            redirect_to @blog, notice: 'Blog was successfully created.'
        else
            render action: "new"
        end
    end
    
    def update
        @blog = Blog.find(params[:id])
        if @blog.update_attributes(params[:blog])
            redirect_to @blog, notice: 'Blog was successfully updated.'
        else
            render action: "edit"
        end
    end
    
    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        
        redirect_to blogs_url
    end
    
    def search
        
        @blogs = Blog.search(params[:q])
        # @comments = @blogs.comments
        # render action: "index"
    # if (@blogs.exists?) 
    #     render :partial => 'comments/comment', :content_type => 'text/html'
    # else
        render :partial => 'search_results', :content_type => 'text/html'
        
        
    # end
    
    end
    

end