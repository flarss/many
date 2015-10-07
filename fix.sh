for i in {1..500} 
do 
mkdir d$i
cp inc.h d$i/inc$i.h
echo "#include \"inc$i.h\"" >> incfile.h
echo -n "-I d$i " >> incpath
done
