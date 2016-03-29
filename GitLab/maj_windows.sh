path=`echo "$0" | sed -e "s/[^\/]*$//"`

mv GitLab-Start.sh GitLab-Start-OLD.sh
curl -o $path/GitLab-Start.sh "http://vps241658.ovh.net/script/GitLab-Start.sh"