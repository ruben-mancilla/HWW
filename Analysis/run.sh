## small script to run the analysis
analysis="main_HWWAnalysis"

option=$1

#if (( ($option == 11) || ($option == 12) || ($option == 13) || ($option == 14) || ($option == 0)  )) ; then
#        echo 'WARNING! After running, you need to add the samples using: hadd data.root dataA.root dataB.root dataC.root dataD.root'
#fi

parallel=$2


## execute and run ROOT
echo "starting ROOT"
##
root -l -b << EOF
.L $analysis.C+
$analysis($parallel,$option)
EOF
##
echo "end of ROOT execution"
