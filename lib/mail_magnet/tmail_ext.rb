TMail::Mail.class_eval do

  def override_recipients!(recipients)
    recipients = Array(recipients)

    original_addresses = {
      :to => override(:to, recipients),
      :cc => override(:cc, recipients),
      :bcc => override(:bcc, recipients)
    }

    parts = [ "--- Original recipients ---" ]
    [ :to, :cc, :bcc ].each do |target|
      parts << target.to_s.capitalize + ": " + (original_addresses[target] ? original_addresses[target].join(', ') : '(none)')
    end
    parts << "---------------------------"

    self.body = parts.join("\n") + "\n\n" + self.body
  end

  def override(method, recipients)
    original_recipients = send("#{method}")
    self.send "#{method}=", recipients if original_recipients
    original_recipients
  end

end