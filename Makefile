
.PHONY: all clean

all:
	docker build -t dbctf:0.1 .

run:
	docker run -p "0.0.0.0:1337:1337" dbctf:0.1
