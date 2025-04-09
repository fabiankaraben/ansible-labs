# local-ansible-awx

Start minikube:
`minikube start --cpus=4 --memory=6g --addons=ingress --force`

Apply the kustomization:
`kubectl apply -k .`

Just to check the pods:
`kubectl get pods -n awx`

And then check the logs:
`kubectl logs -f deployments/awx-operator-controller-manager -c awx-manager -n awx`
and wait until finished.

To get the URL of the service:
`minikube service -n awx awx-demo-service --url`

The user is: `admin`.

To get the password for the admin user:
`kubectl get secret -n awx awx-demo-admin-password -o jsonpath="{.data.password}" | base64 --decode ; echo`
