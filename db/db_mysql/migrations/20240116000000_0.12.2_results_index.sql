
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE INDEX idx_results_campaign_id ON results (campaign_id);
CREATE INDEX idx_results_campaign_status ON results (campaign_id, status);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP INDEX idx_results_campaign_status ON results;
DROP INDEX idx_results_campaign_id ON results;
