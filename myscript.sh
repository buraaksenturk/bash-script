# İlk shell programlama
# !/bin/bash

# yorum satiri

echo $1 $2 # -> iki değişkeni parametre olarak vermiş oluyoruz console yazımı = ./myscript.sh Burak Şentürk

echo Merhaba Dunya!!
# ./ ile çalıştırıyoruz bu uygulamayı veya da bash myscript.sh diyerek bu uygulamaı çalıştırabiliriz



# Kullanıcıdan veri alma
# bash programlamada 9 tane terminal parametresi verebiliyoruz
echo $0 # program adını verir

echo $$ #bu scriptin çalıştığı işlem idsini verir // process id

echo $USER #bu programın çalıştığı kullanıcı

echo $RANDOM #random sayı üretme

echo $HOSTNAME #hostname 'i veriri

myvariable="Merhaba Dünya"

echo $myvariable # Burası çok önemli değişkenimizi atama yapıyoruz

read varname #kullanıcının veridği veriyi okuma

echo "varname: " $varname

read -p "Username: " username
read -sp "Password: " password

echo username password
Username: Burak
Password: username password



# Aritmetik ifadeler

# let <arithmetic expression>
let a=5+4 #-> let ile değişkene değer ataması yapıyoruz
echo "1: " $a

let "a = 5 + 4"
echo "2: " $a

let a++ # b=3+a++ -> 3+9+anın değeri arttırılacak
echo "3: " $a

let ++a #önce a değeri arttırılacak daha sonra işlem yapılacak
echo "4: " $a

let --a # önce çıkarma işlemi yapılır
echo "5: " $a

let "a = 5 * 9"
echo "6: " $a

let a=5*8
echo "7: " $a

let "a = $1 + 20" # kullanıcıdan gelen değer 20 ile toplanıp a ya atanıcak
echo "8: " $a

let a=10%3 #mod alma işlemi (kalan bulma)
echo "9: " $a

echo "10: " 5+4 # string olarak alır  değeri


#exper item1 operator item2

expr 2 + 3 # dogru

expr "2 + 3" # string deger olarak alır

expr 2+3 # boşluk olmadığı için 2+3 olarak basar console üzerine

expr 2 * 3 # '*' bash script için özel bir anlam ifade ettiğinden bu şkeilde kullanılmaz

expr 2 \* 3 # çarpma işleminin doğru kullanımı

expr 10 % 3 # dogru

a=$( expr 10 - 5) # degiskene atama işlemi
echo $a

expr 4 / 2

#$(( expression ))

a=$(( 2 + 3 ))
echo $a

a=$((2+3))
echo $a

b=$((a+3))
echo $b

b=$(($a+3))
echo $b

b=$(($a*3))
echo $b

((b++))
echo $b

# Değişken uzunlugu
# ${#variable}

a="Merhaba Dünya"
echo ${#a} # karakter sayısını verir

b=1234
echo ${#b} # karakter sayısını verir