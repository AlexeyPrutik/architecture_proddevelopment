#!/bin/bash
echo "Применяем привязки ролей к группам..."
kubectl apply -f viewer-role-binding.yaml
kubectl apply -f developer-role-binding.yaml
kubectl apply -f security-auditor-role-binding.yaml
kubectl apply -f cluster-admin-role-binding.yaml
echo "Привязки применены."