   �   !                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              %ORIENTATION=0
PAPERSIZE=9
COLOR=2
                           Courier New                    "wallpaper\invisible.gif"      relation                       	"PT. XYZ"                      Palatino Linotype              "JL. Margonda Raya Depok 16413"                                 Times New Roman                %"*Lembar Pembuatan Slip_Gaji Pegawai"                           Courier New                    "* Slip Gaji Pegawai"          Andalus                        _pageno                        Courier New                    "Page -"                       Courier New                    
datetime()                     Courier New                    A"hitung dahulu jumlah uang yang anda terima dihadapan juru bayar"                                Times New Roman                K"tidak melayani pengaduan setelah meninggalkan ruangan bagian gaji dan kas"                      Times New Roman                "Nama        :"                Courier New                    "NIP         :"                Courier New                    "No. Gaji    :"                Courier New                    "Kode Jbt:"                    Courier New                    "Jabatan     :"                Courier New                    "Pembuat Daftar Gaji,"         Courier New                    Slip_gaji.namaid               Courier New                    Slip_gaji.nama                 Courier New                    Slip_gaji.nip                  Courier New                    Slip_gaji.no_slip              Courier New                    Slip_gaji.jabatan              Courier New                    Slip_gaji.kode                 Courier New                    "Gaji Pokok"                   Courier New                    "(trim(left(Slip_gaji.no_absen,2)))                              Courier New                    "-"                            Courier New                    &(substr(trim(Slip_gaji.no_absen),3,2))                          Courier New                    ": Rp."                        Courier New                    Slip_gaji.gapok                "999,999,999"                  Courier New                    "Gaji Bulan :"                 Courier New                    "(trim(left(Slip_gaji.no_absen,2)))                              Courier New                    "-"                            Courier New                    #(trim(right(Slip_gaji.no_absen,3)))                             Courier New                    &(substr(trim(Slip_gaji.no_absen),3,2))                          Courier New                    "/"                            Courier New                    ": Rp."                        Courier New                    Slip_gaji.gkotor               "999,999,999"                  Courier New                    "*Jml Potongan: Rp."           Courier New                    Slip_gaji.potongan             "999,999,999"                  Courier New                     "*Dibayar Tunai:            Rp."                                Courier New                    Slip_gaji.gbersih              "999,999,999"                  Courier New                    !"**Pph PASAL 21:             Rp."                               Courier New                    data_pph21.pph_sebulan         "999,999,999"                  Courier New                    "Msk :"                        Courier New                    "Izn :"                        Courier New                    "Skt  :"                       Courier New                    "Alph :"                       Courier New                    data_absensi.masuk             Courier New                    data_absensi.izin              Courier New                    data_absensi.sakit             Courier New                    data_absensi.alpha             Courier New                    "Lmbr :"                       Courier New                    data_absensi.lembur            Courier New                    "jm"                           Courier New                    Courier New                    Palatino Linotype              Times New Roman                Andalus                        Times New Roman                Times New Roman                Courier New                    Courier New                    Courier New                    dataenvironment                _Top = 220
Left = 1
Width = 520
Height = 200
DataSource = .NULL.
Name = "Dataenvironment"
                                   cursor                         �Top = 20
Left = 10
Height = 90
Width = 94
Alias = "slip_gaji"
Database = fee.dbc
CursorSource = "slip_gaji"
Name = "Cursor1"
                              cursor                         �Top = 20
Left = 150
Height = 90
Width = 94
Alias = "data_pph21"
Database = fee.dbc
CursorSource = "data_pph21"
Name = "Cursor2"
                           relation                       �ParentAlias = "slip_gaji"
RelationalExpr = "nip"
ChildAlias = "data_pph21"
ChildOrder = "nip"
OneToMany = .T.
Name = "Relation1"
                            cursor                         �Top = 20
Left = 290
Height = 90
Width = 94
Alias = "data_absensi"
Database = fee.dbc
CursorSource = "data_absensi"
Name = "Cursor3"
                       �ParentAlias = "slip_gaji"
RelationalExpr = "no_absen"
ChildAlias = "data_absensi"
ChildOrder = "no_absen"
OneToMany = .T.
Name = "Relation2"
          