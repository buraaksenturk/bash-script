# Karar verme yapıları
# if [ <conditional> ]
# then
#     <some commands>
# fi

if [ "merhaba" = "merhaba" ]
then
    echo "dogru durum"
fi

a=5
if [ $1 = $a ]
then
    echo "girilen deger dogru"
fi


# if [ <conditional> ]
# then
#     <some commands>
# else
#     <some commands>
# fi


if [[ $1 -gt 10 ]]; then
    echo "10'dan büyük sayi"
    if (( $1 % 2 == 0))
    then
        echo "sayimiz 2'ye tam bolunuyor"
    else
        echo "sayimiz tam bölünmüyor"
fi


if [ "merhaba" = "merhaba" ]
then
    echo "dogru durum"
else
    echo "yanlıs durum"
fi

if [ $1 -eq $a ] # esitlik durumunu kontrol etmek icin kullanılır.
then
    echo "girilen deger dogru"
else
    echo "girilen deger yanlıs"
fi

if [ $1 -lt $a ] # kucuktur anlamına gelir.
then
    echo "girilen deger $a'dan kucuktur"
else
    echo "girilen deger $a'dan buyuk veya esittir"
fi

if [ $1 -gt 3 ] # buyuktur anlamına gelir.
then
    echo "girilen deger 3'ten buyuktur"
elif [[ $1 -eq 3 ]]; #bu şekilde de kullanılabilir.
then
    echo "girilen deger $1"
else
    echo "girilen deger 3'ten kucuktur"
fi

if [[ "$2" = "test" ]] && [[ $1 -eq 5 ]];
then
    echo "Boolean operatörleri ögreniyorum"
else
    echo "deger yanlis"
fi

case $3 in
    start)
        echo "Baslatiliyor"
        ;;
    stop)
        echo "Durduruluyor"
        ;;
    *)
        echo "on tanimli durum"
        ;;
esac
