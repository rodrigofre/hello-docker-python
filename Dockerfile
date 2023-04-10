FROM registry.access.redhat.com/ubi8/python-38

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

# Install the dependencies
RUN pip install -U "pip>=22.2.2" && \
    pip install -r requirements.txt

COPY ./main.py /code/main.py

# Run the application
# CMD python manage.py runserver 0.0.0.0:8080
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]