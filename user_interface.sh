# Kullanıcı arayüzü
# Terminali daha efektif kullanabilmeyi sağlıyor
#https://ryanstutorials.net/bash-scripting-tutorial/bash-user-interface.php

cols=$( tput cols )
rows=$( tput lines )
message=$@
input_length=${#message} #mesajın karakter uzunluğunu alır
half_input_length=$(( $input_length / 2 ))
middle_row=$(( $rows / 2 ))
middle_col=$(( ($cols / 2) - $half_input_length )) # ortalamasını saglar
tput clear
tput cup $middle_row $middle_col
tput bold
echo $@
tput sgr@ # bold işlemini geri alır
tput cup $( tput lines ) 0 # imleci en sona taşır