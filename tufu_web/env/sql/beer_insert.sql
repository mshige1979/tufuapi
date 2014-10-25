TRUNCATE TABLE `beer`;

REPLACE INTO `beer` (`id`, `maker`, `kind`, `item_name`, `alcohol_content`, `prin_value`, `unit_name`, `make_end_flg`, `not_write_flg`, `created`, `modified`) VALUES
  (1, 'サントリー', 'ビール', 'ザ・プレミアム・モルツ', 5.500, 9.500, 'mg', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
REPLACE INTO `beer` (`id`, `maker`, `kind`, `item_name`, `alcohol_content`, `prin_value`, `unit_name`, `make_end_flg`, `not_write_flg`, `created`, `modified`) VALUES
  (2, 'サントリー', 'ビール', 'ザ・プレミアム・モルツ（コクのブレンド）', 5.500, 9.500, 'mg', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
