build : ## build
	hugo -D -d ./dist
clean : ## clean
	rm -rf ./dist
post : ## post
	hugo new posts/$(POST_NAME).md 
	
help : 
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
	
