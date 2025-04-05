# Параметры
PROTOC = protoc
PROTO_DIR = proto
OUT_DIR = gen/go
PROTO_FILES = $(PROTO_DIR)/sso/sso.proto

# Цель по умолчанию
all: gen

# Генерация кода из proto
gen:
	$(PROTOC) -I $(PROTO_DIR) --go_out=$(OUT_DIR) --go_opt=paths=source_relative --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative $(PROTO_FILES)

# Очистка сгенерированных файлов
clean:
	rm -rf $(OUT_DIR)/*