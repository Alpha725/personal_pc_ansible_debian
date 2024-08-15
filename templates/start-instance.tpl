%{ for id in dwm ~}
aws ec2 start-instances --instance-ids ${id}
%{ endfor ~}
