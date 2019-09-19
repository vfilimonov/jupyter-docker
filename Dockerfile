FROM python:3.7-slim

COPY requirements.txt .
RUN pip3 install --default-timeout=100 --no-cache-dir -r requirements.txt

ENV HOME_PATH /app

RUN addgroup --gid 1000 --system username && \
    adduser --uid 1000 --system username --ingroup username && \
    mkdir -p ${HOME_PATH} && \
    chown -R username: ${HOME_PATH}

WORKDIR ${HOME_PATH}
COPY . ${HOME_PATH}

RUN chmod +x runit.sh

USER username

CMD ["./runit.sh"]
