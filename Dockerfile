FROM python:3.9
WORKDIR /etl_pipeline_weather_data_docker
COPY requeriments.txt . 
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requeriments.txt
COPY . .
CMD [ "python", "./app.py" ]

