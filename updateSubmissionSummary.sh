 echo " , company, role, submitted, on, status, updated on" > profDocs/submission-summary.csv;counter=0;for folder in profDocs/submissions/*;do echo $((++counter))", "$(echo $(IFS='_' read -r -a array <<< "$(IFS='/' read -r -a array <<< "$folder" && echo "${array[2]}")" && echo "${array[0]}") | tr '-' ' ')", "$(echo $(IFS='_' read -r -a array <<< "$(IFS='/' read -r -a array <<< "$folder" && echo "${array[2]}")" && echo "${array[1]}") | tr '-' ' ')", "$(if [ -f $folder"/submitted.txt" ];then echo "yes, "$(date -r $folder"/DiStasioLuca-cover.pdf" "+%Y-%m-%d");else echo "no, ";fi)", "$(if [ -f $folder"/declined.txt" ];then echo "declined, "$(date -r $folder"/declined.txt" "+%Y-%m-%d");elif [ -f $folder"/interview.txt" ];then echo "interview, "$(date -r $folder"/interview.txt" "+%Y-%m-%d");else echo "pending, ";fi) >> profDocs/submission-summary.csv;done
