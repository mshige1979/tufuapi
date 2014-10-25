TRUNCATE TABLE `food`;

REPLACE INTO `food` (`id`, `kind`, `item_name`, `prin_value`, `one_prin_value`, `one_amount`, `unit_name`, `created`, `modified`)
VALUES
	(1, '調味料', 'みりん', 1.200, 0.100, 6.000, 'g', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

REPLACE INTO `food` (`id`, `kind`, `item_name`, `prin_value`, `one_prin_value`, `one_amount`, `unit_name`, `created`, `modified`)
VALUES
	(2, '調味料', 'ナンプラー（魚醤）', 93.100, 5.600, 6.000, 'g', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

