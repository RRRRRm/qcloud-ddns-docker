FROM python:3.9-alpine

RUN apk add --no-cache curl bash


# Using douban pipy mirror
#RUN pip3 install -i https://pypi.douban.com/simple/ -U pip 
#RUN pip3 config set global.index-url https://pypi.douban.com/simple/

RUN pip3 install tccli --no-cache-dir

COPY src/ /workspace
COPY cronjobs /etc/crontabs/root

CMD ["bash", "/workspace/entrypoint.sh"]
