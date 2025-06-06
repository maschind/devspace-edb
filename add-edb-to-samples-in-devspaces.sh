oc create configmap \
  getting-started-samples --from-file=sample-devfile.json \
  -n openshift-operators
oc label configmap \
  getting-started-samples \
  app.kubernetes.io/part-of=che.eclipse.org \
  app.kubernetes.io/component=getting-started-samples \
  -n openshift-operators
