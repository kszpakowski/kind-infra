kind create cluster --config cluster.yaml

# TODO add installation of sealed secrets key

# Argo CD
kubectl create namespace argocd
kustomize build ./argocd/overlays | kubectl apply -n argocd -f -
kubectl apply -f app-of-apps.yaml