# Atlassian

```
jira.example.com   wiki.example.com   bitbucket.example.com
       +                   +                    +
       |                   |                    |
       +----------------------------------------+
                           |
                           v
                         Nginx
                           +
       +-----------------------------------------+
       |                   |                     |
       v                   v                     v
   Atlassian Jira    Atlassian Confluence   Atlassian Bitbucket
 [host:jira:8080]   [host:confluence:8090]  [host:bitbucket:7990]
       +                   +                     |
       |                   |                     |
       +-----------------------------------------+
                           |
                           v
                        Postgres
                   [host:database:5432]
                           +
                           |
       +------------------------------------------+
       |                   |                      |
       v                   v                      v
   [db:jira]           [db:wiki]          [db:bitbucket]
```

Atlassian supported products:

- Jira `7.9.2`
- Confluence `6.9.0`
- Bitbucket `5.10.1`



# Step by Step


```sh
$ sudo echo 127.0.0.1 jira.himalaya.tech >> /etc/hosts
$ sudo echo 127.0.0.1 wiki.himalaya.tech >> /etc/hosts
$ sudo echo 127.0.0.1 bitbucket.himalaya.tech >> /etc/hosts
```

```sh
$ git clone https://github.com/omidraha/atlassian
$ docker-compose up -d
```

```sh
$ docker exec -it postgres psql -U postgres
```
```sql
CREATE DATABASE jira;
CREATE DATABASE wiki;
CREATE DATABASE bitbucket;
\l
\q
```



# Start

Now, you could visit these websites:

- http://jira.himalaya.tech
- http://wiki.himalaya.tech
- http://bitbucket.himalaya.tech
