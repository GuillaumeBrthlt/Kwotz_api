class UserMailer < Devise::Mailer
  default from: "support@kwot-z.fr" 
 
  def reset_password_instructions(record, token, opts = {})
    super
  end

  def confirmation_instructions(record, token, opts = {})
    super
  end
end
