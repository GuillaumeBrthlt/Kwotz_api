class UserMailerPreview < ActionMailer::Preview
  def reset_password_instructions
    UserMailer.reset_password_instructions(User.first, "faketoken")
  end

  def confirmation_instructions
    UserMailer.confirmation_instructions(User.first, "faketoken")
  end

end