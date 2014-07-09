require 'test_helper'

class ThumbnailsControllerTest < ActionController::TestCase
  setup do
    @thumbnail = thumbnails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thumbnails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thumbnail" do
    assert_difference('Thumbnail.count') do
      post :create, thumbnail: { thumb_image: @thumbnail.thumb_image, thumb_post: @thumbnail.thumb_post, thumb_title: @thumbnail.thumb_title }
    end

    assert_redirected_to thumbnail_path(assigns(:thumbnail))
  end

  test "should show thumbnail" do
    get :show, id: @thumbnail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thumbnail
    assert_response :success
  end

  test "should update thumbnail" do
    patch :update, id: @thumbnail, thumbnail: { thumb_image: @thumbnail.thumb_image, thumb_post: @thumbnail.thumb_post, thumb_title: @thumbnail.thumb_title }
    assert_redirected_to thumbnail_path(assigns(:thumbnail))
  end

  test "should destroy thumbnail" do
    assert_difference('Thumbnail.count', -1) do
      delete :destroy, id: @thumbnail
    end

    assert_redirected_to thumbnails_path
  end
end
