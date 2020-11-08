FROM golang

COPY app.go .
COPY blockchain.html /

RUN go get -d -v github.com/lib/pq github.com/julienschmidt/httprouter
RUN go build -o a.out

EXPOSE 8000

CMD ["./a.out"]