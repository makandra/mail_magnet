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

    line_break = self.content_type =~ /(html)/ ? "<br />" : "\n"
    self.body = parts.join(line_break) + line_break*2 + self.body
  end

  def override(method, recipients)
    original_recipients = send("#{method}")
    self.send "#{method}=", recipients if original_recipients
    original_recipients
  end

end