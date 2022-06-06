
FROM python:3.8
EXPOSE 8501/tcp
EXPOSE 8501/udp
EXPOSE 8502/tcp
EXPOSE 8502/udp
WORKDIR /app

COPY requirements.txt .



RUN pip install -r requirements.txt

COPY ./app ./app

ENTRYPOINT [ "streamlit", "run" ]
CMD [ "./app/app.py"]