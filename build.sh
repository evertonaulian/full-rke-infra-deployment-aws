#export AWS_ACCESS_KEY_ID=
#export AWS_SECRET_ACCESS_KEY=

ip=`curl -s https://api.ipify.org`

ansible-playbook -v provisioning.yml -i hosts --extra-vars "PUBLICIP=$ip USERPASSWORD=$1"
