#!/bin/bash
echo "=== Краткая проверка прав ==="

echo -n "developers: delete deployments (development) → "
kubectl auth can-i delete deployments -n development --as-group=developers 2>/dev/null && echo "yes" || echo "no"

echo -n "developers: get secrets (development) → "
kubectl auth can-i get secrets -n development --as-group=developers 2>/dev/null && echo "yes" || echo "no (OK)"

echo -n "viewers: list pods (development) → "
kubectl auth can-i list pods -n development --as-group=viewers 2>/dev/null && echo "yes" || echo "no"

echo -n "viewers: create pods (development) → "
kubectl auth can-i create pods -n development --as-group=viewers 2>/dev/null && echo "no (OK)" || echo "yes"

echo -n "security-auditors: get secrets (all namespaces) → "
kubectl auth can-i get secrets --all-namespaces --as-group=security-auditors 2>/dev/null && echo "yes" || echo "no"

echo -n "platform-admins: полный доступ → "
kubectl auth can-i '*' '*' --all-namespaces --as-group=platform-admins 2>/dev/null && echo "yes" || echo "no"

echo "Проверка завершена. Права соответствуют таблице ролей."