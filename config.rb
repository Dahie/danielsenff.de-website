activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false
page '/music/*', layout: 'music'

activate :deploy do |deploy|
  deploy.deploy_method = :rsync
  deploy.host = 'www.danielsenff.de'
  deploy.path = 'danielsenff.de-2019/'
  deploy.user = 'u19168'
  # Optional Settings
  # deploy.port  = 5309 # ssh port, default: 22
  # deploy.clean = true # remove orphaned files on remote host, default: false
  # deploy.flags = '-rltgoDvzO --no-p --del' # add custom flags, default: -avz
end
