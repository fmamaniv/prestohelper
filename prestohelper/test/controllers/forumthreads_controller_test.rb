require 'test_helper'

class ForumthreadsControllerTest < ActionController::TestCase
  setup do
    @forumthread = forumthreads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forumthreads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forumthread" do
    assert_difference('Forumthread.count') do
      post :create, forumthread: { body: @forumthread.body, creation_date: @forumthread.creation_date, post_private: @forumthread.post_private, title: @forumthread.title }
    end

    assert_redirected_to forumthread_path(assigns(:forumthread))
  end

  test "should show forumthread" do
    get :show, id: @forumthread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forumthread
    assert_response :success
  end

  test "should update forumthread" do
    patch :update, id: @forumthread, forumthread: { body: @forumthread.body, creation_date: @forumthread.creation_date, post_private: @forumthread.post_private, title: @forumthread.title }
    assert_redirected_to forumthread_path(assigns(:forumthread))
  end

  test "should destroy forumthread" do
    assert_difference('Forumthread.count', -1) do
      delete :destroy, id: @forumthread
    end

    assert_redirected_to forumthreads_path
  end
end
