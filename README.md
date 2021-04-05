# ARCH KURULUMU
<hr>
- Arch isosunu usbye yaz

```bash
sudo dd if=isoismi of=/dev/sdb status=progress #dev/sdb benim usb konumum sizinkisi /dev/sda,sdb,sdc olabilir
```  
- Bilgisayarı usb ile başlat. daha sonra klavye ayarını yap
```bash
loadkeys trq
setfont iso09.16
```
- Daha sonra diski bölümle . Bir adet 512M SWAP bölümü , bir adet de linux file bölümü yapın

- `lsblk` komutu ile disk bölümlerinizi görebilirsiniz

- Şimdi de SWAP alanını formatlayalım swap alanınızın /dev/sda2 olduğunu varsayıyorum
```bash
mkswap -L ARCH-SWAP /dev/sda2
swapon /dev/sda2
```
- SWAP alanı formatlandı . Şimdi de diğer alanı formatlayalım . bu alanınızın /dev/sda1 olduğunu varsayıyorum
```bash
mkfs.ext4 -L ARCH-ROOT /dev/sda1
```
- Bunu da yaptığımıza göre şimdi sırada  
