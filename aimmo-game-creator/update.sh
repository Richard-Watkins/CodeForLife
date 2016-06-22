#!/usr/bin/env bash
set -e
kubectl delete rc aimmo-game-creator || true
kubectl delete rc -l app=aimmo-game
kubectl delete pod -l app=aimmo-game-worker
kubectl delete service -l app=aimmo-game
kubectl create -f rc-aimmo-game-creator.yaml
sleep 5
kubectl get rc
kubectl get pod
kubectl get service
kubectl get ingress
