require 'test_helper'

class AdmissionsControllerTest < ActionController::TestCase
  setup do
    @admission = admissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post :create, admission: { active: @admission.active, admissionDate: @admission.admissionDate, admissionStatus: @admission.admissionStatus, bed_id: @admission.bed_id, blackout: @admission.blackout, blackoutDate: @admission.blackoutDate, closeDate: @admission.closeDate, closeReason: @admission.closeReason, locker: @admission.locker, module: @admission.module, program_id: @admission.program_id, referralReason: @admission.referralReason, referralSource: @admission.referralSource, resident_id: @admission.resident_id }
    end

    assert_redirected_to admission_path(assigns(:admission))
  end

  test "should show admission" do
    get :show, id: @admission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admission
    assert_response :success
  end

  test "should update admission" do
    patch :update, id: @admission, admission: { active: @admission.active, admissionDate: @admission.admissionDate, admissionStatus: @admission.admissionStatus, bed_id: @admission.bed_id, blackout: @admission.blackout, blackoutDate: @admission.blackoutDate, closeDate: @admission.closeDate, closeReason: @admission.closeReason, locker: @admission.locker, module: @admission.module, program_id: @admission.program_id, referralReason: @admission.referralReason, referralSource: @admission.referralSource, resident_id: @admission.resident_id }
    assert_redirected_to admission_path(assigns(:admission))
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete :destroy, id: @admission
    end

    assert_redirected_to admissions_path
  end
end
