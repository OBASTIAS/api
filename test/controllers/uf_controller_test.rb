require 'test_helper'

class UfControllerTest < ActionDispatch::IntegrationTest
  test "should get respuesta" do
    get uf_respuesta_url
    assert_response :success
  end

end
