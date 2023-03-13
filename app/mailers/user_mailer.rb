class UserMailer < Devise::Mailer
  default from: "support@kwot-z.fr" 
 
  def reset_password_instructions(record, token, opts = {})
    @token = token
    opts[:subject] = "Réinitialisez votre mot de passe"
    bootstrap_mail(to: record.email, subject: opts[:subject])
  end

  def confirmation_instructions(record, token, opts = {})
    @token = token
    @email = record.email
    opts[:subject] = "Confirmez votre adresse email"
    bootstrap_mail(to: record.email, subject: opts[:subject])
  end
end
