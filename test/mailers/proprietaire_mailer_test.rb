require 'test_helper'

class ProprietaireMailerTest < ActionMailer::TestCase
  test "reservation" do
    mail = ProprietaireMailer.reservation
    assert_equal "Reservation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
