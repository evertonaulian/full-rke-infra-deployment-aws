#export AWS_ACCESS_KEY_ID=
#export AWS_SECRET_ACCESS_KEY=

IP=`curl -s https://api.ipify.org`
key=`cat ~/.ssh/everton.aulianNV.pem`

ansible-playbook -v provisioning.yml -i hosts --extra-vars "PUBLICIP=$IP KEY=\"$key\""
