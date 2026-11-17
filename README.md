# CapCut Thai Font Fix (Kanit)

แก้ปัญหาตัวหนังสือภาษาไทยในเมนู (UI) ของ CapCut บน PC ที่ตัวเล็กกว่าภาษาอังกฤษจนอ่านยาก โดยเปลี่ยนฟอนต์ของโปรแกรมเป็นฟอนต์ **Kanit**

![ก่อนและหลังแก้ฟอนต์ไทยใน CapCut](%E0%B9%81%E0%B8%81%E0%B9%89%E0%B8%9F%E0%B8%AD%E0%B8%99%E0%B8%95%E0%B9%8C%E0%B9%84%E0%B8%97%E0%B8%A2%E0%B9%83%E0%B8%99%20CapCut%20%E0%B8%87%E0%B9%88%E0%B8%B2%E0%B8%A2%E0%B8%99%E0%B8%B4%E0%B8%94%E0%B9%80%E0%B8%94%E0%B8%B5%E0%B8%A2%E0%B8%A7.jpg)

> ใช้ได้เฉพาะ CapCut บน **Windows PC** เท่านั้น

## ดาวน์โหลด

👉 **[กดตรงนี้เพื่อโหลด CapCut-Thai-Font-Fix.zip](https://github.com/ventrura/CapCut-Thai-Kanit-Font-Fix/releases/latest/download/CapCut-Thai-Font-Fix.zip)**

หรือดูทุกเวอร์ชันได้ที่หน้า [Releases](https://github.com/ventrura/CapCut-Thai-Kanit-Font-Fix/releases)

## วิธีใช้

1. โหลดไฟล์ zip แล้ว **แตกไฟล์ (Extract) ก่อน** อย่ารันจากในไฟล์ zip ตรงๆ
2. ดับเบิลคลิก `Fix-CapCut-Thai.bat`
3. ถ้า CapCut เปิดอยู่ หน้าต่างจะถามว่าให้ปิดไหม ให้พิมพ์ `Y` แล้วกด Enter
4. ถ้าขึ้นคำว่า **Fixed!** ก็เปิด CapCut ใหม่ได้เลย

## สคริปต์นี้ทำอะไรบ้าง

- หาโฟลเดอร์ของ CapCut ทุกเวอร์ชันในเครื่องให้เอง ไม่ต้องรู้ว่าเครื่องเป็นเวอร์ชันไหน
- **สำรองฟอนต์เดิมไว้ก่อนทุกครั้ง** แล้วค่อยใส่ฟอนต์ Kanit แทน
- ถ้าเวอร์ชันไหนแก้ไปแล้วจะข้ามไป รันซ้ำได้ไม่มีปัญหา
- ไม่ต้องติดตั้งโปรแกรมเพิ่ม และไม่ส่งข้อมูลใดๆ ออกจากเครื่อง

เปิดอ่านโค้ดได้ก่อนรัน: [`Fix-CapCut-Thai.bat`](Fix-CapCut-Thai.bat) · [`Restore-Original.bat`](Restore-Original.bat) · [`fix.ps1`](fix.ps1)

## ข้อควรรู้

- ถ้า Windows ขึ้นหน้าต่าง **"Windows protected your PC"** ให้กด **More info** แล้วกด **Run anyway**
- พอ CapCut อัปเดตแล้วตัวหนังสือกลับมาเล็ก ให้ดับเบิลคลิก `Fix-CapCut-Thai.bat` ซ้ำ
- ถ้าอยากได้ฟอนต์เดิมของ CapCut กลับมา ให้ดับเบิลคลิก `Restore-Original.bat`
- ถ้า CapCut รุ่นใหม่เปลี่ยนชื่อไฟล์ฟอนต์ สคริปต์จะหาไม่เจอและขึ้นว่า **"CapCut not found"** กรณีนี้อาจต้องลองวิธีอื่น

## ข้อจำกัดความรับผิดชอบ

โปรเจกต์นี้ทำขึ้นเองเพื่อแบ่งปัน **ไม่ได้เกี่ยวข้องกับ CapCut หรือ ByteDance อย่างเป็นทางการ** สคริปต์จะแก้ไขไฟล์ฟอนต์ในโฟลเดอร์ของ CapCut (มีสำรองไฟล์เดิมไว้ให้) ใช้งานตามความสมัครใจของผู้ใช้เอง

## เครดิตฟอนต์

ฟอนต์ **Kanit** © 2020 The Kanit Project Authors ([cadsondemak/kanit](https://github.com/cadsondemak/kanit))
ใช้สัญญาอนุญาต SIL Open Font License 1.1 ดูรายละเอียดใน [`OFL.txt`](OFL.txt)
