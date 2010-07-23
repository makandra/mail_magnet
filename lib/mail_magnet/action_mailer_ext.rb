ActionMailer::Base.class_eval do

  @@override_recipients = nil
  cattr_accessor :override_recipients

  def deliver_with_override!(mail = @mail)
    if override_recipients.present?
      mail.override_recipients! override_recipients
    end
    deliver_without_override! mail
  end
  alias_method_chain :deliver!, :override

end
