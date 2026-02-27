#!/bin/bash
echo "Применяем роли..."
kubectl apply -f viewer-role.yaml
kubectl apply -f developer-role.yaml
kubectl apply -f security-auditor-role.yaml
kubectl apply -f cluster-admin-role.yaml
echo "Роли применены."