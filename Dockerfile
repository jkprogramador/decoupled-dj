FROM python:3.10.2-slim-buster
LABEL maintainer="Jack Lee" email="brasil.sp.jk@gmail.com"
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1
WORKDIR /usr/src/app
COPY Pipfile Pipfile.lock /usr/src/app/
RUN pip install pipenv && pipenv install --system
COPY src .
ENTRYPOINT [ "python" ]