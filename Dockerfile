FROM scratch as builder
WORKDIR /zad2/
COPY patryk.py .

FROM python:latest
COPY --from=builder /zad2/patryk.py .
ENTRYPOINT ["python"]
CMD ["patryk.py"]