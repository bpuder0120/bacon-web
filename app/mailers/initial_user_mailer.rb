class InitialUserMailer < ActionMailer::Base
  default from: "The Bacon Team <contact@havebacon.com>"

  def signup(initial_user)
    @initial_user = initial_user
    mail(to: @initial_user.email, subject: "Bring home that Bacon")
  end

end