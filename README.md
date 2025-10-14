# devspace-edb

## EDB Workshop Install Instructions on Openshift 

1. Install DevSpaces & EDB operator as global
2. Login with oc cli as cluster-admin
3. Deploy users, using the script ```./userscript.sh```
4. Execute ```./loopusers.sh``` to make sure users are created after the first login 
5. Create CheCluster instance ```oc apply -f CheCluster.yaml -n openshift-operators```
6. Execute ```./add-edb-to-samples-in-devspaces.sh```
7. Create DevSpaces instance for each user using the *Create Workspace* menu with git repo: ```https://github.com/maschind/devspace-edb.git```




