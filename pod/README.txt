
oc create -f pod.yaml

oc get pods

oc describe pod <POD_NAME>

oc logs -f <POD_NAME>

oc get pod <POD_NAME> -o yaml

oc exec -it <POD_NAME>  -- bash
