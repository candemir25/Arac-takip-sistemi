SELECT ARAC_BILGISI.Surucu_TCKN,ARAC_BILGISI.Plaka, ARAC_TURU.Arac_Turu
FROM ARAC_BILGISI,ARAC_TURU
WHERE ARAC_BILGISI.Arac_Turu=ARAC_TURU.Arac_Tur_No
AND ARAC_BILGISI.Surucu_TCKN='2154853623';