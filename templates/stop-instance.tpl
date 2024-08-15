%{ for id in dwm ~}
aws ec2 stop-instances --instance-ids ${id}
%{ endfor ~}
