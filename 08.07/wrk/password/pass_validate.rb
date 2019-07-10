def validate(password)
  if password.length >= 10 &&
    password.count('1-9') &&
    password.count('A-Za-z') &&
    password.count('А-Яа-я') &&
    password.count('!@#$%^&*()~`|') >= 2
    :strong
  else
    :weak 
  end
end