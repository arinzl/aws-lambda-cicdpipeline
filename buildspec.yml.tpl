version: 0.1
phases:
  install:
    commands:
      - aws cloudformation package --template-file samTemplate.yml --s3-bucket ${s3bucket} --output-template-file outputSamTemplate.yml
artifacts:
  type: zip
  files:
    - outputSamTemplate.yml