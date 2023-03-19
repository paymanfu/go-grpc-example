# 编译google.api
protoc -I . --go_out=plugins=grpc,Mgoogle/protobuf/descriptor.proto=github.com/golang/protobuf/protoc-gen-go/descriptor:. google/api/*.proto

# 编译hello_http.proto
protoc -I . --go_out=plugins=grpc,Mgoogle/api/annotations.proto=github.com/paymanfu/go-grpc-example/proto/google/api:. hello_http/*.proto

# 编译hello_http.proto gateway
protoc --grpc-gateway_out=logtostderr=true:. hello_http/hello_http.proto
