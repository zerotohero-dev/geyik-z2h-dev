#!/usr/bin/env bash

# ( Vadideki Geyik )
#   `--(_   _)--'
#        Y-Y
#       /@@ \   don’t miss the deer,
#      /     \    go kiss the deer.
#      `--'.  \             ,
#          |   `.__________/)

mkdocs build

if [[ -z "$VG_S3_BUCKET" || -z "$VG_DISTRIBUTION_ID" ]]; then
  echo "Error: $VG_S3_BUCKET and $VG_DISTRIBUTION_ID must be set."
  exit 1
fi

if [[ -z "$VG_S3_BUCKET_2" || -z "$VG_DISTRIBUTION_ID_2" ]]; then
  echo "Error: $VG_S3_BUCKET_2 and $VG_DISTRIBUTION_ID_2 must be set."
  exit 1
fi

aws s3 sync site/ "$VG_S3_BUCKET"
aws s3 sync site/ "$VG_S3_BUCKET_2"

aws cloudfront create-invalidation --distribution-id "$VG_DISTRIBUTION_ID" --paths "/*"
aws cloudfront create-invalidation --distribution-id "$VG_DISTRIBUTION_ID_2" --paths "/*"
