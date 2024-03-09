FROM golang as builder
WORKDIR /usr/app
COPY . .
RUN go mod init hellogo && \
  go build

FROM scratch
COPY --from=builder /usr/app/hellogo .
CMD ["./hellogo"]