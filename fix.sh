for j in {1..10}
do
	for i in {1..50} 
	do 
		echo "#include \"inc$j.h\"" > util$j$i.c
		echo "#include <stdio.h>" >> util$j$i.c
		echo "void util$j$i() { printf(\"util$j$i was here\\n\"); } " >> util$j$i.c
	done
done

#for i in {1..500} 
#do 
#echo "void util$i() { printf(\"util$i was here\\n\"); } " > util$i.c
#mkdir d$i
#cp inc.h d$i/inc$i.h
#echo "#include \"inc$i.h\"" >> incfile.h
#echo -n "-I d$i " >> incpath
#done
