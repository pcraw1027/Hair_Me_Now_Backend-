class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :logged_In?, only: [:create, :login]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show

    render json: @user
  end

  # POST /users
  def create
    # @user = User.new(user_params)

    # if @user.save
    #   render json: @user, status: :created, location: @user
    # else
    #   render json: @user.errors, status: :unprocessable_entity
    # end

    user = User.new(user_params)

    stylist = Stylist.new(user_id: user.id, 
                        first_name: "firstName",
                        last_name: "lastName",
                        address_1: "address1",
                        address_2: "address2",
                        city: "city",
                        zip_code: "zipCode",
                        url: "url",
                        image: "image",
                        email: "email",
                        phone_num: "phoneNum",
                        gender_service: "genderService",
                        ethnicity_service: "ethnicityService"
    )

    if user.valid?
      user.save
      stylist.save
      render json:user
    else
      render json: {error: "Not able to create a user"}
    end
  end

  def login
    # byebug
      user = User.find_by(username: params[:username])

      if user && user.authenticate(params[:password])
        render json: {user_id: user.id, username: user.username, token: encode_token({user_id: user.id}), user_prices: user.user_prices, user_appointments: user.user_appointments, user_stylist: user.user_stylist}
      else
        render json: {message: "wrong usename and password"}
      end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      # params.require(:user).permit(:username, :password_digest, :user_type, :avatar)
      params.permit(:username, :password, :user_type, :avatar)
    end
end
