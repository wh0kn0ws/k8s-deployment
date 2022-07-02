#get newest creds for apps on each login
#rabbitmq
echo "rabbitmq username:"
echo $(microk8s kubectl get secret rabbitmqcluster-default-user -o go-template='{{.data.username | base64decode}}')
printf "\n"
echo "rabbitmq password:"
echo $(microk8s kubectl get secret rabbitmqcluster-default-user -o go-template='{{.data.password | base64decode}}')
printf "\n"
#elasticsearch
echo "elastic password:"
echo $(microk8s kubectl get secret elasticsearch-es-elastic-user -o go-template='{{.data.elastic | base64decode}}')
