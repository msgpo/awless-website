#!/bin/sh

pandoc -o index.html  -s --highlight-style pygments --template sidebar/toc-sidebar.html --toc -B sidebar/nav main.md --self-contained

awless create -f s3object bucket=doc.awless.io acl=public-read file=./index.html