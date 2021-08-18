FROM python:3

WORKDIR /usr/src/annotation

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN label-studio-ml init my-ml-backend --script models/ner.py
RUN cp models/utils.py my-ml-backend/utils.py

CMD [ "label-studio-ml", "start", "my-ml-backend" ]
