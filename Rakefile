ssh_user      = "u19168@danielsenff.de"    # for rsync deployment
remote_root   = "danielsenff.de-2014" # for rsync deployment

desc "push to website"
task :push do
  system("rsync -avz --exclude-from=.rsync-exclude --omit-dir-times --delete . #{ssh_user}:#{remote_root}")
end
