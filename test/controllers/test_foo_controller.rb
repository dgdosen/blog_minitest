require "minitest_helper"

class FooControllerTest < MiniTest::Rails::Controller
  setup do
    @foo = foos(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:foos)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Foo.count') do
      post :create, foo: @foo.attributes
    end

    assert_redirected_to foo_path(assigns(:foo))
  end

  def test_show
    get :show, id: @foo.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @foo.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @foo.to_param, foo: @foo.attributes
    assert_redirected_to foo_path(assigns(:foo))
  end

  def test_destroy
    assert_difference('Foo.count', -1) do
      delete :destroy, id: @foo.to_param
    end

    assert_redirected_to foos_path
  end
end
