require 'test_helper'

class ConfRoomsControllerTest < ActionController::TestCase
  setup do
    @conf_room = conf_rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conf_rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conf_room" do
    assert_difference('ConfRoom.count') do
      post :create, conf_room: { description: @conf_room.description, location: @conf_room.location, name: @conf_room.name, sq_feet: @conf_room.sq_feet }
    end

    assert_redirected_to conf_room_path(assigns(:conf_room))
  end

  test "should show conf_room" do
    get :show, id: @conf_room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conf_room
    assert_response :success
  end

  test "should update conf_room" do
    patch :update, id: @conf_room, conf_room: { description: @conf_room.description, location: @conf_room.location, name: @conf_room.name, sq_feet: @conf_room.sq_feet }
    assert_redirected_to conf_room_path(assigns(:conf_room))
  end

  test "should destroy conf_room" do
    assert_difference('ConfRoom.count', -1) do
      delete :destroy, id: @conf_room
    end

    assert_redirected_to conf_rooms_path
  end
end
