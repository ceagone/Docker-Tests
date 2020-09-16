# FROM python:2
# LABEL maintainer="ceagone85@gmail.com"
# RUN 
# WORKDIR /tmp/Flaskex/
# COPY /tmp/Flaskex/requirements.txt .
# ENV APP=Flaskex
# EXPOSE 5000
# CMD ["python" "app.py"]


FROM python:2
WORKDIR /tmp/Flaskex
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV APP=Flasek
EXPOSE 5000
CMD [ "python", "app.py" ]
