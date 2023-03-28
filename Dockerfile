#FROM mydrivebot5/testfile:v5ubuntu
FROM anasty17/mltb:dev

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN curl -o /usr/src/app/requirements.txt https://gist.githubusercontent.com/yopremium21/a07a1ed07d6dc36376b597a9f7b62f68/raw/requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
