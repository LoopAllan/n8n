

.PHONY: setup
setup:
	@bash setup.sh

.PHONY: run
run:
	@docker-compose down
	@docker-compose up -d
	@echo "等待一回而...再開啟網頁試試看. (預設網頁: http://127.0.0.1:5678 )"
