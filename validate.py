from wtforms import Form, StringField, PasswordField, validators
from wtforms.fields.html5 import EmailField

class Register(Form):
    username = StringField('Username', [validators.DataRequired(), validators.Length(min=4, max=25)])
    email = EmailField('Email Address', [validators.DataRequired(), validators.Email()])
    password = PasswordField('New Password', [validators.Length(min=6), validators.DataRequired()])