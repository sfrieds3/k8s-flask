FROM python

WORKDIR /app

COPY requirements.txt /app/
RUN python3 -m pip install -r requirements.txt

COPY app.py /app/app.py

ENTRYPOINT [ "python" ]
CMD [ "-m", "flask", "--app", "app", "run", "--host", "0.0.0.0" ]
