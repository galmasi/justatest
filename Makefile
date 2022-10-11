all build:
	@echo "Hello from makefile build"
	docker build .

run:
	@echo "Run test"
	uname -a
	cat /etc/lsb-release
	virsh list
	docker ps
	ls -l /dev/tpm0
	sudo apt-get update
	sudo apt-get -y install tpm2-tools
	tpm2_pcrread

clean:
	@echo "Cleaning"
