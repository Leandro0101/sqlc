createmigration:
	migrate create -ext=sql -dir=sql/migrations -seq init
migrate: 
	migrate -path=sql/migrations -database "postgres://root:toor123@localhost:5432/sqlc-test?sslmode=disable" -verbose up

migratedown: 
	migrate -path=sql/migrations -database "postgres://root:toor123@localhost:5432/sqlc-test?sslmode=disable" -verbose up

.PHONY: migrate createmigration migratedown
