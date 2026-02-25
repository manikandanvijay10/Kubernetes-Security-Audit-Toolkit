#!/bin/bash

echo "Kubernetes Security Score"

score=0

if kubectl get networkpolicies -A | grep -q "No resources found"
then
  echo "No network policies"
else
  score=$((score+1))
fi

echo "Score: $score/10"
