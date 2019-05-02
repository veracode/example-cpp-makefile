CC=g++

all: hello

hello:
	mkdir -p project/build
	$(CC) -Wl,--no-as-needed -o project/build/$@ project/src/main.cpp -Lproject/lib -lcom_err -lverto -lgssapi_krb5 -lk5crypto -lkrad -lkrb5 -lkrb5support

clean:
	rm -rf project/build
