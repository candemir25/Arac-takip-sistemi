SELECT RANDEVU.Tarih,ARAC_BILGISI.Plaka
FROM RANDEVU,ARAC_BILGISI
WHERE RANDEVU.Randevu_No=ARAC_BILGISI.Randevu_No
AND ARAC_BILGISI.Plaka='12 AEA 124';
