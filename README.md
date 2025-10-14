# devspace-edb

## EDB Workshop Install Instructions on Openshift 

1. Install DevSpaces & EDB operator as global
2. Login with oc cli as cluster-admin
3. Deploy users, using the script ```./userscript.sh```
4. Execute ```./loopusers.sh``` to make sure users are created after the first login 
5. Create CheCluster instance ```oc apply -f CheCluster.yaml -n openshift-operators```
6. Execute ```./add-edb-to-samples-in-devspaces.sh```
7. Get the URL for DevSpaces ```oc get route devspaces -n openshift-operators```
8. Create namespace for minio ```oc new-project minio```
9. Deploy mino as cluster-admin ```oc apply -f minio.yaml -n minio```
10. Get the URL for minio-ui with ```oc get route minio-ui -n minio```




## Use the Workshop
Each user can create its own DevSpaces instance by using *Create Workspace* 
and choose 
- the pre-configured sample: **Postgres on OpenShift Workshop**
- or create from git repo: ```https://github.com/maschind/devspace-edb.git```




