
# Задание 1. Разработка проверочного листа по безопасности данных
```markdown
[Карта безопасности данных](Task1/Checklist.drawio)
```

# Задание 2. Разработка и заполнение проверочного листа по ИБ для бизнес-систем
```markdown
[Чек лист ИБ](Task2/IB_check_list.md)
```

# Задание 3. Внешние интеграции
```markdown
[Диаграмма контекста](Task3/C4-context.drawio)
[Диаграмма контейнеров обновленная](Task3/C4-container-updated.drawio)

```

# Задание 4. Настройка RBAC в кубернетес кластере
```markdown
[список ролей и их описание](Task4/Roles.md)
Запускаются скрипты по порядку
1 [Создание неймспейса](Task4/scripts/1_create_namespace.sh)
2 [Применение ролей](Task4/scripts/2_apply_roles.sh)
3 [Применение связок ролей](Task4/scripts/3_apply_bindings.sh)
3 [проверка ролей](Task4/scripts/verify-permissions.sh)


```
# Задание 5. Настройка политик безопасности
```markdown
[Network-policies](Task5/network-policies.yaml)

```
Команды для запуска сервисов
kubectl run front-end-app --image=nginx --labels role=front-end --expose --port 80
kubectl run back-end-api-app --image=nginx --labels role=back-end-api --expose --port 80
kubectl run admin-front-end-app --image=nginx --labels role=admin-front-end --expose --port 80
kubectl run admin-back-end-api-app --image=nginx --labels role=admin-back-end-api --expose --port 80

Команды для тестирования политик
kubectl get pod back-end-api-app -o wide (результат ip-adress поды)
kubectl get pod admin-back-end-api-app -o wide (результат ip-adress поды)
kubectl run test-front --rm -it --image=alpine --labels role=front-end -- sh
wget -qO- "ip-adress поды" --timeout=2

Доступ до бэкенда должен быть, до админки бэкенда отсутствовать как и положено
