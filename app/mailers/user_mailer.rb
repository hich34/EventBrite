class UserMailer < ApplicationMailer

    default from: 'no-reply@google.fr'
 
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

   
end


#User.find_by(id: Event.find_by(id: Attendance.find_by(user_id: @user).event_id).admin_id).email

#Event.find_by(id: Attendance.find_by(user_id: 16)).event_id