# init.shがあるディレクトリに移動
cd `dirname $0`
dir_path=`pwd -P`
examplefiles=`find $dir_path -maxdepth 3 -type f -name "*.example"`

for exampleFile in $examplefiles;
do
    deletedExampleExtentionFile=${exampleFile%'.example'}
    cp $exampleFile $deletedExampleExtentionFile
done
