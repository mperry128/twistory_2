class UsersController < ApplicationController
  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @users = User.find(params[:id])
    # @photos = Photo.find(params[:id])


    render("users/show.html.erb")
  end

  def new
    @users = User.new

    render("users/new.html.erb")
  end

  def create
    @user = User.new

    @users.caption = params[:caption]
    @users.image = params[:image]
    @users.id = params[:user_id]

    save_status = @users.save

    if save_status == true
      redirect_to("/users/#{@users.id}", :notice => "User created successfully.")
    else
      render("users/new.html.erb")
    end
  end

  def edit
    @users = User.find(params[:id])

    render("Users/edit.html.erb")
  end

  def update
    @users = User.find(params[:id])

    @users.comment = params[:comment]
    @users.tweet = params[:tweet]
    @users.id = params[:user_id]

    save_status = @users.save

    if save_status == true
      redirect_to("/users/#{@users.id}", :notice => "User updated successfully.")
    else
      render("users/edit.html.erb")
    end
  end

  def destroy
    @users = User.find(params[:id])

    @users.destroy

    if URI(request.referer).path == "/users/#{@users.id}"
      redirect_to("/", :notice => "user deleted.")
    else
      redirect_to(:back, :notice => "User deleted.")
    end
  end
end
