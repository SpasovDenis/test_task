# test_task
Этот проект представляет собой веб-приложение, использующее PHP, MySQL и Nginx. Проект разворачивается с помощью ansible playbook на удаленной машине с использованием docker и docker-compose. В качестве примера использованы разработанные php страницы
Чтобы начать работу, следуйте этим шагам:

Шаг 1: Клонирование репозитория
Клонировать репозиторий можно с помощью Git:

git clone https://github.com/SpasovDenis/test_task

Шаг 2: Установка и настройка ansible.
Установить ansible командой:
apt-get install ansible

Укажем в переменной PATH путь до ansible:
export PATH=$PATH:/home/user/.local/bin

Создайте файл ansible.cfg , содержащий путь до файла inventory(у меня это файл hosts)
[defaults]
inventory = /home/USER/hosts
host_key_checking = false

Создайте файл inventory по примеру (мой пример называется hosts) 

Шаг 3: Запуск playbook
Запустите playbook командой
ansible-playbook playbook.yaml

Использование: Для просмотра веб-сервиса можно обратиться на удаленной машине, на которой устанавливались контейнеры playbookом , по адресу http://localhost:8080 или http://127.0.0.1:8080
