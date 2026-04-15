
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
ALTER TABLE results ADD COLUMN attachment_opened boolean default 0;

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
ALTER TABLE results DROP COLUMN attachment_opened;
