PARAMETERS passwd

DO case
CASE passwd="1" && administrator
	SET SKIP OF BAR 1 OF file .t. &&login dimatikan
	SET SKIP OF BAR 2 OF file .f.
	SET SKIP OF BAR 4 OF file .t.
CASE passwd="2" && ManangerKeuangan
	SET SKIP OF BAR 1 OF file .t. &&login dimatikan
	SET SKIP OF BAR 2 OF file .f.
	SET SKIP OF BAR 4 OF file .f.
	SET SKIP OF BAR 5 OF tools .t.
CASE passwd="3" && DataEntry
	SET SKIP OF BAR 1 OF file .t. &&login dimatikan
	SET SKIP OF BAR 2 OF file .f.
	SET SKIP OF BAR 4 OF file .f.
	SET SKIP OF BAR 3 OF tools .t.
	SET SKIP OF BAR 5 OF tools .t.
ENDCASE
