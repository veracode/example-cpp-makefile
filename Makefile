CC=g++

all: hello

hello:
	$(CC) -o project/build/$@ project/src/main.cpp -Llib -lcom_err -lverto -lgssapi_krb5 -lk5crypto -lkrad -lkrb5 -lkrb5support

clean:
	rm -f project/build/hello
