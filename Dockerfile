FROM python:3.10.10

EXPOSE 80

WORKDIR /drift_lms

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /drift_lms/app

WORKDIR /drift_lms/app

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]