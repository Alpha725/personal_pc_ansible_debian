all:
  children:
    dwm:
      hosts:
%{ for ip in dwm ~}
        ${ip}:
%{ endfor ~}
      vars:
        ansible_user: ubuntu
        timezone: Australia/Sydney