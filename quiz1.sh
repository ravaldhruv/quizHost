#!/bin/bash -x
yaml_content=$'apiVersion: apps/v1\n'
yaml_content+=$'kind: Deployment\n'
yaml_content+=$'metadata:\n'
yaml_content+=$'  name: example-deployment\n'
yaml_content+=$'spec:\n'
yaml_content+=$'  replicas: 2\n'
yaml_content+=$'  selector:\n'
yaml_content+=$'    matchLabels:\n'
yaml_content+=$'      app: example-app\n'
yaml_content+=$'  template:\n'
yaml_content+=$'    metadata:\n'
yaml_content+=$'      labels:\n'
yaml_content+=$'        app: example-app\n'
yaml_content+=$'    spec:\n'
yaml_content+=$'      containers:\n'
yaml_content+=$'      - name: nginx-container\n'
yaml_content+=$'        image: nginx:lates\n'  
yaml_content+=$'        ports:\n'
yaml_content+=$'        - containerPort: 80\n'


echo "$yaml_content" > quiz1.yml
kubectl apply -f quiz1.yml
