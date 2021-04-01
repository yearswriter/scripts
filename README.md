# Различные некрупные скрипты, 
Скрипты, для которых не имеет смысл заводить отдельную репу

## Bash

### Openvpn
- (generate_new_client.sh)[bash/openvpn/generate_new_client.sh] Автогенерация последовательных клиентов с номером после имени и соовтествующем статическим ip

### various 
Несортированные скрипты
 - (credentials.auth)[bash/various/credentials.auth] Пример !PLAIN TEXT! файлика с авторизационными данными для ```#region NOT SECURE!``` в (var.lib)[bash\various\var.lib], в гитигноре после первого коммита
 - (var.lib)[bash\various\var.lib] Библиотечка с кучей методов на баше, чтобы `source` -ть их
  - (send_email.sh)[bash\various\send_email.sh] Простой скрипт принимающий аргументом 1-строкове тело письма на `[user]@[mail.ex]` от `[user]@[mail.ex]` (должно совпадать для простого клиента) с темой письма `"$LOGNAME@$HOSTNAME"`
  - (send_email_from_file.sh)[bash\various\send_email_from_file.sh] Простой скрипт принимающий аргументом путь к файлу с телом письма на `[user]@[mail.ex]` от `[user]@[mail.ex]` (должно совпадать для простого клиента) с темой письма `"$LOGNAME@$HOSTNAME"`
