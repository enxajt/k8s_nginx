gcloud container clusters create loadbalancedcluster
kubectl run nginx --image=nginx --port=80
kubectl expose deployment nginx --target-port=80  --type=NodePort
kubectl get service nginx
kubectl apply -f basic-ingress.yaml
kubectl get ingress basic-ingress

kubectl run echoserver --image=gcr.io/google_containers/echoserver:1.4 --port=8080
kubectl expose deployment echoserver --target-port=8080 --type=NodePort
kubectl create -f fanout-ingress.yaml

kubectl get ingress fanout-ingress
35.201.124.170:80
35.186.222.56:80/echo

kubectl delete ingress basic-ingress
kubectl delete ingress fanout-ingress
gcloud container clusters delete loadbalancedcluster
