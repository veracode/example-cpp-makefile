CC=g++

all: hello

hello:
	$(CC) -o $@ src/main.cpp -Llib/ -lcom_err -lgssapi_krb5 -lk5crypto.so -lkrad -lkrb5 -lkrb5support

clean:
	rm -f hello
