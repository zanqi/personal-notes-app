# Personal Notes App

A full-stack personal notes application built with **Rails** (backend API) and **Next.js** (frontend). This project demonstrates modern web development practices using two popular frameworks.

## 🚀 Tech Stack

### Backend (Rails API)
- **Ruby on Rails 8** - API-only mode
- **PostgreSQL** - Database
- **CORS** - Cross-Origin Resource Sharing

### Frontend (Next.js)
- **Next.js 15** - React framework with App Router
- **TypeScript** - Type safety
- **Tailwind CSS** - Utility-first CSS framework
- **React Hooks** - State management

## 📁 Project Structure

```
personal-notes-app/
├── notes_api/          # Rails API backend
│   ├── app/
│   │   ├── controllers/
│   │   │   └── api/v1/
│   │   │       └── notes_controller.rb
│   │   └── models/
│   │       └── note.rb
│   ├── config/
│   │   ├── routes.rb
│   │   └── initializers/cors.rb
│   └── db/
├── notes-frontend/     # Next.js frontend
│   ├── src/
│   │   ├── app/
│   │   │   ├── page.tsx
│   │   │   └── layout.tsx
│   │   ├── components/
│   │   │   ├── NoteCard.tsx
│   │   │   └── NoteModal.tsx
│   │   └── lib/
│   │       └── api.ts
│   └── package.json
└── README.md
```

## 🛠 Prerequisites

Before running this application, make sure you have the following installed:

### For Rails Backend:
- **Ruby 3.4+** (using rbenv or similar)
- **PostgreSQL** (installed via Homebrew)
- **Bundler gem**

### For Next.js Frontend:
- **Node.js 18+** (with npm)

## 📦 Installation & Setup

### 1. Clone the Repository
```bash
git clone <your-repo-url>
cd personal-notes-app
```

### 2. Backend Setup (Rails API)

```bash
# Navigate to Rails directory
cd notes_api

# Install dependencies
bundle install

# Setup database
rails db:create
rails db:migrate

# Start Rails server on port 3001
rails server -p 3001
```

The Rails API will be available at: `http://localhost:3001`

### 3. Frontend Setup (Next.js)

Open a new terminal window:

```bash
# Navigate to frontend directory
cd notes-frontend

# Install dependencies
npm install

# Start development server
npm run dev
```

The Next.js frontend will be available at: `http://localhost:3000`

## 🌐 API Endpoints

The Rails backend provides the following REST API endpoints:

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/api/v1/notes` | Get all notes |
| GET    | `/api/v1/notes/:id` | Get a specific note |
| POST   | `/api/v1/notes` | Create a new note |
| PATCH  | `/api/v1/notes/:id` | Update a note |
| DELETE | `/api/v1/notes/:id` | Delete a note |

### Example API Request

```bash
# Create a new note
curl -X POST http://localhost:3001/api/v1/notes \
  -H "Content-Type: application/json" \
  -d '{
    "note": {
      "title": "My First Note",
      "content": "This is the content of my note."
    }
  }'
```

## ✨ Features

- **Create Notes**: Add new notes with title and content
- **View Notes**: Display all notes in a responsive grid layout
- **Edit Notes**: Update existing notes with a modal form
- **Delete Notes**: Remove notes with confirmation
- **Responsive Design**: Works on desktop and mobile devices
- **Real-time Updates**: Changes reflect immediately in the UI
- **Error Handling**: Graceful error handling for API failures

## 🎨 Screenshots

### Main Dashboard
- Clean, modern interface displaying all notes
- Responsive grid layout (1 column on mobile, 2-3 on larger screens)
- "New Note" button prominently displayed

### Create/Edit Modal
- Full-screen modal for creating and editing notes
- Form validation and loading states
- Auto-focus on title field for better UX

## 🔧 Development

### Rails Backend Development

```bash
# Run tests
rails test

# Generate new migration
rails generate migration AddFieldToNotes field:type

# Rails console
rails console
```

### Next.js Frontend Development

```bash
# Run linting
npm run lint

# Build for production
npm run build

# Run production build
npm start
```

## 🚀 Deployment

### Rails API Deployment
- Deploy to platforms like Heroku, Railway, or AWS
- Set up production database (PostgreSQL)
- Configure environment variables

### Next.js Frontend Deployment
- Deploy to Vercel, Netlify, or similar platforms
- Update API base URL to production endpoint
- Build and deploy static assets

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 Learning Notes

This project was built to learn and demonstrate:

- **Rails API development** - Building RESTful APIs with Rails
- **Next.js App Router** - Using the latest Next.js patterns
- **Full-stack integration** - Connecting React frontend with Rails backend
- **Modern CSS** - Using Tailwind CSS for rapid UI development
- **TypeScript** - Adding type safety to JavaScript applications

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🆘 Troubleshooting

### Common Issues

1. **CORS Errors**: Make sure the Rails CORS configuration allows `localhost:3000`
2. **Database Connection**: Ensure PostgreSQL is running and databases are created
3. **Port Conflicts**: Rails runs on port 3001, Next.js on port 3000 by default
4. **Node/Ruby Version**: Check that you're using compatible versions

### Getting Help

If you encounter issues:
1. Check that both servers are running
2. Verify API endpoints in browser or with curl
3. Check browser console for frontend errors
4. Review Rails logs for backend issues

---

**Happy coding!** 🎉 