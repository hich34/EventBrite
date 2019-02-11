class AttendanceMailer < ApplicationMailer

    default from: 'no-reply@google.fr'

def participate_event(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
@user = user 


#on définit une variable @url qu'on utilisera dans la view d’e-mail
@url  = 'http://monsite.fr/login' 

# c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
mail(to: User.find(Event.find_by(id: Attendance.all.last.event_id).admin_id).email, subject: "Un nouvel utlisateur à rejoins l'event") 
end
end

#User.find(Event.find_by(id: Attendance.find_by(user_id: @user).last.event_id).admin_id).email