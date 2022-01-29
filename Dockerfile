FROM python:3.7.7-slim

EXPOSE 9080

ADD practica_creativa2/bookinfo/src/productpage ./

ENV GROUP_NUMBER 48

RUN sed -i "s/BookInfo Sample/BookInfo Sample $GROUP_NUMBER/" templates/productpage.html

RUN pip install -r requirements.txt

CMD ["python3", "productpage_monolith.py", "9080"]