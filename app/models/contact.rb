class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true 

  def headers
    {
      :subject => "Novo Contato de À Quatre Pas D'ici",
      :to => "stefanostamato@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
