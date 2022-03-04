# helm upgrade -i flux fluxcd/flux \
# --set git.url=git@github.ibm.com:epricer-next-ops/epricer-nonprod-cluster-state.git \
# --set git.user=kiranchowdhury \
# --set git.email=kiranchowdhury@in.ibm.com \
# --set git.branch=master \
# --set git.path={'dev-workloads','test-workloads'} \
# --set-string ssh.known_hosts=${KNOWN_HOSTS} \
# --set registry.dockercfg.enabled=true \
# --set registry.dockercfg.secretName=artifactory-repo-cred \
# --set registry.dockercfg.configFileName=/dockercfg/.dockerconfigjson \
# --set allowedNamespaces={'w3dev','w3test'} \
# --set clusterRole.create=false \
# --set logFormat=fmt \
# --set replicaCount=1 \
# --namespace epricer-cd-operator
helm upgrade -i flux fluxcd/flux -f flux/values.yaml --namespace epricer-cd-operator