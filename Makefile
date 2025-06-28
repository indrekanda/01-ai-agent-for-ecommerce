run-streamlit:
	streamlit run src/chatbot-ui/streamlit_app.py

check-streamlit:
	@echo "Checking if Streamlit is running..."
	@netstat -ano | findstr :8501 > nul && echo "Port 8501 is in use" || echo "Port 8501 is not in use"
	@docker ps | findstr streamlit > nul && echo "Streamlit Docker container is running" || echo "No Streamlit Docker containers found"

build-docker-streamlit:
	docker build -t streamlit-app:latest .

# #docker run -v ${PWD}/.env:/app/.env -p 8501:8501 streamlit-app:latest
# PWD fails, using absolute path
run-docker-streamlit:
	docker run -v "D:/Projects/_courses/end-to-end-ai-engineering-bootcamp/01-ai-agent-for-ecommerce/.env:/app/.env" -p 8501:8501 streamlit-app:latest

# Stop Streamlit Docker container
stop-docker-streamlit:
	@docker ps --filter "ancestor=streamlit-app:latest" --format "{{.ID}}" | findstr . > nul && docker stop $$(docker ps --filter "ancestor=streamlit-app:latest" --format "{{.ID}}") || echo "No Streamlit containers running"


clean-notebook-outputs:
	jupyter nbconvert --clear-output --inplace notebooks/*.ipynb