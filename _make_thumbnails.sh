mkdir -p tn/images
for file in images/*.{pdf}; do
    [ ! -f "tn/$file" ] && pdftoppm -png -f 1 -singlefile "$file" "temp_$file"
done
for file in images/*.{jpg,png}; do
    [ ! -f "tn/$file" ] && convert "$file" -thumbnail 160x160 "tn/$file"
done
