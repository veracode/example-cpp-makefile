CC=g++

all: hello

hello:
	mkdir -p project/build
	$(CC) -o project/build/$@ project/src/main.cpp -Lproject/lib -lcom_err -lverto -lgssapi_krb5 -lk5crypto -lkrad -lkrb5 -lkrb5support

clean:
	rm -rf project/build
