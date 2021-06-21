EEPROM初期化プログラム
=====================

本初期化プログラムが行う初期データは以下の通り。

|    Description             | Initial Value                 |
|----------------------------|-------------------------------|
|    UECSID                  | 0x10,0x10,0x0C,0x00,0x00,0x0A |
|    MAC_Address             | 0x02,0xA2,0x73,0x0A,0xXX,0xYY |
|    InAirTemp_Type          | 'T'                           |
|    InAirTemp_Room          | 1                             |
|    InAirTemp_Region        | 1                             |
|    InAirTemp_Order         | N                             |
|    InAirTemp_Priority      | 15                            |
|    InAirTemp_Interval      | 10                            |
|    InAirTemp_Name          | 'InAirTemp',NULL              |
|    InAirHumid_Type         | 'H'                           |
|    InAirHumid_Room         | 1                             |
|    InAirHumid_Region       | 1                             |
|    InAirHumid_Order        | n                             |
|    InAirHumid_Priority     | 15                            |
|    InAirHumid_Interval     | 10                            |
|    InAirHumid_Name         | 'InAirHumid',NULL             |
|    InIllumi_Type           | 'I'                           |
|    InIllumi_Room           | 1                             |
|    InIllumi_Region         | 1                             |
|    InIllumi_Order          | n                             |
|    InIllumi_Priority       | 15                            |
|    InIllumi_Interval       | 10                            |
|    InIllumi_Name           | 'InIllumi',NULL               |
|    cnd Type (dummy)        | 'c'                           |
|    cnd Room                | 1                             |
|    cnd Region              | 1                             |
|    cnd Order               | n                             |
|    cnd Priority            | 29                            |
|    cnd Interval            | 1                             |
|    cnd Name                | 'cnd',NULL*4                  |


N:1から必要数繰り返す。

このプログラムは、製造時にArduino UNOに1度だけインストールして実行するプログラムである。

起動後、MACアドレスの下2桁のためにシリアル番号を聞いてくるのでそれに答える。
重複の確認は出来ないので、入力時にちゃんと台帳などで確認管理をする必要がある。
