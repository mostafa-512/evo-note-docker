## EvoNote – AI Project Ideation Assistant 🚀  

**EvoNote** is a full-stack web application designed to help developers transform raw, messy project ideas into clear, structured, and executable plans.  

Instead of jumping between scattered notes and half-baked concepts, EvoNote acts as an **AI-powered project assistant** that understands your idea, refines it, and helps you shape it into a solid project scope.

---

### 🎯 Core Idea

EvoNote takes your initial project idea and helps you:
- Clarify the project vision  
- Break down the idea into structured features  
- Suggest possible tech stack and architecture directions  
- Prepare a more realistic and actionable plan for implementation  

---

### 🧩 Tech Stack (Production-Ready Architecture)

We have upgraded the infrastructure to a fully containerized, microservices-like architecture:

- ⚛️ **Front-End:** React.js + Vite (Served via Nginx)
- 🐍 **Back-End:** Flask (Python) powered by Gunicorn
- 🗄️ **Database:** PostgreSQL (Robust relational database for users & history)
- 🤖 **AI Provider:** Google Gemini API (gemini-2.5-flash)
- 🐳 **DevOps & Infra:** Docker & Docker Compose (Multi-stage builds, isolated networks, and Nginx as a Reverse Proxy)
- 🔐 **Security:** JWT (JSON Web Tokens) for authentication & Bcrypt for password hashing.

---

### 🧠 Key Features

- **Streaming AI responses:** Messages appear character-by-character for a smooth chat experience.
- **Clean Architecture:** Nginx acts as a reverse proxy, seamlessly routing `/api` requests to the internal Flask backend network.
- **System Prompt support:** You can define the AI’s role (e.g., `Project Architect`, `Code Reviewer`, `Product Manager`) to get tailored insights.
- **Persistent Data:** Chat histories and user accounts are securely stored in PostgreSQL using Docker Volumes to prevent data loss.

---

### 🔐 Auth & History

- Secure **Authentication System** (Register / Login) using JWT.
- Passwords are encrypted using **bcrypt** before hitting the database.
- Full **Conversation history** support, attached to authenticated user sessions.

---

### 🌱 Future Improvements

- Saving and managing multiple separate project sessions/threads.
- Enhanced UI/UX and layout improvements.
- Simple project management features inside EvoNote.
- Support for multiple AI providers in addition to Gemini.

---

## 🚀 How to Run (Docker Setup)

The project is now fully containerized. You no longer need to manually manage Python virtual environments or Node modules.

**Prerequisites:** 
Make sure you have [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) installed on your machine.

**1. Clone the repository:**
```bash
git clone https://github.com/mostafa-512/evo-note-docker.git
cd evo-note-docker
```

**2. Configure Environment Variables:
Create a .env file in the root directory and add your keys:**
```bash
# Example .env file
DATABASE_URL=postgresql://username:password@host:port/database_name
GEMINI_API_KEY=your_google_gemini_api_key_here
JWT_SECRET_KEY=your_super_secret_jwt_key
```

**3. Build and Run the Containers:
Run the following command in the root directory to build the images and start the services:**
```bash
docker compose up --build
```
## 4. Access the App:
Once the containers are up and running, open your browser and navigate to:
```bash
http://localhost:8080
```

The project is now fully containerized. You no longer need to manually manage Python virtual environments or Node modules.

Nginx will automatically serve the React frontend and proxy all /api requests to the Flask backend!

EvoNote is part of my continuous learning journey in Full-Stack Development & DevOps, combining modern web technologies, AI APIs, and containerization into a real-world scalable project. Feel free to reach out with feedback or ideas!
