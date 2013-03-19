require 'bundler/setup' 
require 'rubygsm'
#gem 'rubygsm', github: 'kalys/rubygsm'
#gem 'rubygsm', github: 'AndreMitsuoka/rubygsm'
#gem 'rubygsm', github: 'AndreMitsuoka/rubygsm'
#gem 'rubygsm', path: '/home/mitsuoka/Documentos/rubygsm'


class ReverseApp
    def initialize(gsm)
        gsm.receive(method(:incoming))
        @gsm = gsm
    end

    def incoming(from, datetime, message)
        puts("incoming \n #{message}")
        #@gsm.send(from, message.reverse)
    end
end

gsm = Gsm::Modem.new
ReverseApp.new(gsm)


#gsm.receive(Gsm::Incoming.new) #gsm = Gsm::Modem.new(:auto, :warn)

#puts "#{gsm.incoming}"
#puts "sucess\n\n\n\n\n\n"
#gsm.receive(method(:incoming)) 


#gsm.send_sms('+551581144047', 'It works!') #its working bitches!



