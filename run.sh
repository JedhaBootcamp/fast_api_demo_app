docker run -it \
-v "$(pwd):/home/app" \
-p 7860:7860 \
-e PORT=7860 \
-e MLFLOW_TRACKING_URI=$MLFLOW_TRACKING_URI \
-e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
-e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
-e BACKEND_STORE_URI=$BACKEND_STORE_URI \
-e ARTIFACT_ROOT=$ARTIFACT_ROOT \
api