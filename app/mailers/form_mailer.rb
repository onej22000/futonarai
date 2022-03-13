class FormMailer < ApplicationMailer

    def confirm_user(forms)
        #@greeting = "Hello"
        @forms = forms
        mail(
            from: 'futonarainotakumi55@gmail.com',
            to:   @forms.form_email,
           #bcc:  'bbbbb@example.com',
            subject: '＜テストメール＞お問い合わせ内容が送信されました'
          ) do |format|
            format.text #テキストメールを指定
            #format.html #HTMLメールを指定
        end
    end
end
