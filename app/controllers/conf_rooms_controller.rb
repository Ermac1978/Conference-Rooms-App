class ConfRoomsController < ApplicationController
  before_action :set_conf_room, only: [:show, :edit, :update, :destroy]
  before_action :set_order_by, only: [:search, :index]

  def search
    @conf_rooms = ConfRoom.for_user(current_user).where("description like ?", "%#{params[:search_query]}%").order(@order_by)
    render template: "conf_rooms/index"
  end

  # GET /conf_rooms
  # GET /conf_rooms.json
  def index
     @conf_rooms = current_user.campus.conf_rooms.order(@order_by)
    # @conf_rooms = ConfRoom.for_user(current_user)
  end

  # GET /conf_rooms/1
  # GET /conf_rooms/1.json
  def show
  end

  # GET /conf_rooms/new
  def new
    @conf_room = ConfRoom.new
  end

  # GET /conf_rooms/1/edit
  def edit
  end

  def add
  end

  # POST /conf_rooms
  # POST /conf_rooms.json
  def create
    @conf_room = ConfRoom.new(conf_room_params)
    @conf_room.user = current_user
    respond_to do |format|
      if @conf_room.save
        format.html { redirect_to @conf_room, notice: 'Conf room was successfully created.' }
        format.json { render :show, status: :created, location: @conf_room }
      else
        format.html { render :new }
        format.json { render json: @conf_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conf_rooms/1
  # PATCH/PUT /conf_rooms/1.json
  def update
    respond_to do |format|
      if @conf_room.update(conf_room_params)
        format.html { redirect_to @conf_room, notice: 'Conf room was successfully updated.' }
        format.json { render :show, status: :ok, location: @conf_room }
      else
        format.html { render :edit }
        format.json { render json: @conf_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conf_rooms/1
  # DELETE /conf_rooms/1.json
  def destroy
    @conf_room.destroy
    respond_to do |format|
      format.html { redirect_to conf_rooms_url, notice: 'Conf room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conf_room
#     @conf_room = ConfRoom.for_user(current_user).find(params[:id])
      @conf_room = current_user.campus.conf_rooms.find(params[:id])
    end

    def set_order_by
      @order_by = params[:order_by]  || "name DESC, location DESC, sq_feet DESC, description DESC"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conf_room_params
      params.require(:conf_room).permit(:name, :location, :sq_feet, :description, :user_id, :pic, :campus_id, :remove_pic, :feature_ids => [])
    end
end
