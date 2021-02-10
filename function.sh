# Fonksiyonlar
# function name(parameter) {
#     #statements
# }

function print_funct {
    echo "inner function"
}

print_funct

function func_with_param {
    echo $1
    echo $2
}

func_with_param 'param1' 'param2'

func_name() {
    echo 'function without function key word'
}

func_name

var='out_func'
echo $var

function local_var {
    local var='func_param1' # 'local' sadece bu function icerisinde geçerli yapar.
    var2=5
    echo $var $var2
}

local_var

echo $var $var2

print_ls() {
    echo 'print_ls function'
    return 5
}

print_ls
echo $?     #return value -> bir önce calısan fonksiyon veya degerin çıktısını almaya yarar

# ls fonksiyonunu değiştirmek için kullanılır
ls() {
    command ls -la
}

ls
