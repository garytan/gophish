
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE INDEX idx_attachments_template_id ON attachments (template_id);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP INDEX IF EXISTS idx_attachments_template_id;
