for file in *
    do
        if [ "${file##*.}"x = "cl"x ];then
            if [[ "${file}" == "conv_depthwise_s1.cl" ]];then
            echo ./gcl_binary --input=$file --output=${file%.*}_31.bin  --options=\"${copt} -D F=3 -D ON=1 -D IN=3 -D LN=3 -D UN=2 -D Fsq=9  -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_32.bin  --options=\"${copt} -D F=3 -D ON=2 -D IN=4 -D LN=4 -D UN=3 -D Fsq=9  -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_33.bin  --options=\"${copt} -D F=3 -D ON=3 -D IN=5 -D LN=5 -D UN=4 -D Fsq=9  -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_34.bin  --options=\"${copt} -D F=3 -D ON=4 -D IN=6 -D LN=6 -D UN=5 -D Fsq=9  -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_35.bin  --options=\"${copt} -D F=3 -D ON=5 -D IN=7 -D LN=7 -D UN=6 -D Fsq=9  -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_36.bin  --options=\"${copt} -D F=3 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=9  -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_37.bin  --options=\"${copt} -D F=3 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=9  -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_38.bin  --options=\"${copt} -D F=3 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=9  -DUSE_HALF -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_relu_31.bin  --options=\"${copt} -D F=3 -D ON=1 -D IN=3 -D LN=3 -D UN=2 -D Fsq=9  -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_32.bin  --options=\"${copt} -D F=3 -D ON=2 -D IN=4 -D LN=4 -D UN=3 -D Fsq=9  -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_33.bin  --options=\"${copt} -D F=3 -D ON=3 -D IN=5 -D LN=5 -D UN=4 -D Fsq=9  -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_34.bin  --options=\"${copt} -D F=3 -D ON=4 -D IN=6 -D LN=6 -D UN=5 -D Fsq=9  -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_35.bin  --options=\"${copt} -D F=3 -D ON=5 -D IN=7 -D LN=7 -D UN=6 -D Fsq=9  -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_36.bin  --options=\"${copt} -D F=3 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=9  -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_37.bin  --options=\"${copt} -D F=3 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=9  -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_38.bin  --options=\"${copt} -D F=3 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=9  -DUSE_HALF -DUSE_RELU -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_51.bin  --options=\"${copt} -D F=5 -D ON=1 -D IN=5 -D LN=5 -D UN=4 -D Fsq=25 -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_52.bin  --options=\"${copt} -D F=5 -D ON=2 -D IN=6 -D LN=6 -D UN=5 -D Fsq=25 -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_53.bin  --options=\"${copt} -D F=5 -D ON=3 -D IN=7 -D LN=7 -D UN=6 -D Fsq=25 -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_54.bin  --options=\"${copt} -D F=5 -D ON=4 -D IN=4 -D LN=3 -D UN=3 -D Fsq=25 -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_55.bin  --options=\"${copt} -D F=5 -D ON=5 -D IN=5 -D LN=4 -D UN=4 -D Fsq=25 -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_56.bin  --options=\"${copt} -D F=5 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=25 -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_57.bin  --options=\"${copt} -D F=5 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=25 -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_58.bin  --options=\"${copt} -D F=5 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=25 -DUSE_HALF -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_relu_51.bin  --options=\"${copt} -D F=5 -D ON=1 -D IN=5 -D LN=5 -D UN=4 -D Fsq=25 -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_52.bin  --options=\"${copt} -D F=5 -D ON=2 -D IN=6 -D LN=6 -D UN=5 -D Fsq=25 -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_53.bin  --options=\"${copt} -D F=5 -D ON=3 -D IN=7 -D LN=7 -D UN=6 -D Fsq=25 -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_54.bin  --options=\"${copt} -D F=5 -D ON=4 -D IN=4 -D LN=3 -D UN=3 -D Fsq=25 -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_55.bin  --options=\"${copt} -D F=5 -D ON=5 -D IN=5 -D LN=4 -D UN=4 -D Fsq=25 -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_56.bin  --options=\"${copt} -D F=5 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=25 -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_57.bin  --options=\"${copt} -D F=5 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=25 -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_58.bin  --options=\"${copt} -D F=5 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=25 -DUSE_HALF -DUSE_RELU -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_31.bin  --options=\"${copt} -D F=3 -D ON=1 -D IN=3 -D LN=3 -D UN=2 -D Fsq=9 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_32.bin  --options=\"${copt} -D F=3 -D ON=2 -D IN=4 -D LN=4 -D UN=3 -D Fsq=9 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_33.bin  --options=\"${copt} -D F=3 -D ON=3 -D IN=5 -D LN=5 -D UN=4 -D Fsq=9 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_34.bin  --options=\"${copt} -D F=3 -D ON=4 -D IN=6 -D LN=6 -D UN=5 -D Fsq=9 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_35.bin  --options=\"${copt} -D F=3 -D ON=5 -D IN=7 -D LN=7 -D UN=6 -D Fsq=9 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_36.bin  --options=\"${copt} -D F=3 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=9 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_37.bin  --options=\"${copt} -D F=3 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=9 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_38.bin  --options=\"${copt} -D F=3 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=9 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_31.bin  --options=\"${copt} -D F=3 -D ON=1 -D IN=3 -D LN=3 -D UN=2 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_32.bin  --options=\"${copt} -D F=3 -D ON=2 -D IN=4 -D LN=4 -D UN=3 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_33.bin  --options=\"${copt} -D F=3 -D ON=3 -D IN=5 -D LN=5 -D UN=4 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_34.bin  --options=\"${copt} -D F=3 -D ON=4 -D IN=6 -D LN=6 -D UN=5 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_35.bin  --options=\"${copt} -D F=3 -D ON=5 -D IN=7 -D LN=7 -D UN=6 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_36.bin  --options=\"${copt} -D F=3 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_37.bin  --options=\"${copt} -D F=3 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_38.bin  --options=\"${copt} -D F=3 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=9  -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_51.bin  --options=\"${copt} -D F=5 -D ON=1 -D IN=5 -D LN=5 -D UN=4 -D Fsq=25 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_52.bin  --options=\"${copt} -D F=5 -D ON=2 -D IN=6 -D LN=6 -D UN=5 -D Fsq=25 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_53.bin  --options=\"${copt} -D F=5 -D ON=3 -D IN=7 -D LN=7 -D UN=6 -D Fsq=25 -DUSE_NCWH -DUSE_HALF\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_54.bin  --options=\"${copt} -D F=5 -D ON=4 -D IN=4 -D LN=3 -D UN=3 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_55.bin  --options=\"${copt} -D F=5 -D ON=5 -D IN=5 -D LN=4 -D UN=4 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_56.bin  --options=\"${copt} -D F=5 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_57.bin  --options=\"${copt} -D F=5 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_ncwh_58.bin  --options=\"${copt} -D F=5 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -D BASICE_REG\"

            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_51.bin  --options=\"${copt} -D F=5 -D ON=1 -D IN=5 -D LN=5 -D UN=4 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_52.bin  --options=\"${copt} -D F=5 -D ON=2 -D IN=6 -D LN=6 -D UN=5 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_53.bin  --options=\"${copt} -D F=5 -D ON=3 -D IN=7 -D LN=7 -D UN=6 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_54.bin  --options=\"${copt} -D F=5 -D ON=4 -D IN=4 -D LN=3 -D UN=3 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_55.bin  --options=\"${copt} -D F=5 -D ON=5 -D IN=5 -D LN=4 -D UN=4 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_56.bin  --options=\"${copt} -D F=5 -D ON=6 -D IN=6 -D LN=5 -D UN=5 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_57.bin  --options=\"${copt} -D F=5 -D ON=7 -D IN=7 -D LN=6 -D UN=6 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            echo ./gcl_binary --input=$file --output=${file%.*}_relu_ncwh_58.bin  --options=\"${copt} -D F=5 -D ON=8 -D IN=8 -D LN=7 -D UN=7 -D Fsq=25 -DUSE_NCWH -DUSE_HALF -DUSE_RELU -D BASICE_REG\"
            fi
        fi
    done



