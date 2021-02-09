# クリップボードから文字列を変数に代入する
copied=`pbpaste | nkf -w`

# Qiita <- Gatsby
pat_1_before='(`{3,4})(.+):title=(.+)'
pat_1_after='\1\2:\3'
strings=`echo "$copied" | sed -E "s/$pat_1_before/$pat_1_after/g"`
echo "$strings" | open -f

# # Qiita -> Gatsby
# pat_2_before='(`{3,4})(.+):(.+)'
# pat_2_after='\1\2:title=\3'
# strings=`echo $copied | sed -E "s/$pat_2_before/$pat_2_after/g"`
