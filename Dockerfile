# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.12

# Встановимо змінну середовища
ENV ADDRESS_BOOK=/project_group_9-main

# Встановимо робочу директорію всередині контейнера
WORKDIR $ADDRESS_BOOK

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

RUN pip install --upgrade pip

# Теперь установим проект как CLI-команду
RUN pip install -e .

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["helper"]
