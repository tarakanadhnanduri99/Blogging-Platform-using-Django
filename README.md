# 📝 Personal Blog Website (Django)

A full-featured personal blog application built with Django that allows users to view blog posts with images. Admins can manage content easily using Django’s built-in admin panel. Designed for learning and showcasing backend web development skills.

---

## 🔧 Features

- Display latest blog posts with title, summary, image, and publish date  
- Detailed view for each blog post with full content and image  
- Media upload and rendering (e.g., blog images)  
- Django admin interface for managing posts  
- Templates for post listing and detail view  

---

## 🗂️ Folder Structure

```
website/
├── blog/                    # Django app
│   ├── templates/           # HTML templates
│   │   ├── posts.html       # Home page template
│   │   └── details.html     # Single post detail view
│   ├── admin.py             # Register model with admin
│   ├── models.py            # BlogPost model
│   ├── views.py             # View logic
│   ├── urls.py              # URL routing
│   └── ...
├── media/images/            # Uploaded blog images
│   └── nature1.jpeg         # Example image
├── website/                 # Django project folder
│   ├── settings.py
│   ├── urls.py
│   └── ...
├── db.sqlite3               # SQLite database
└── manage.py                # Django management script
```

---

## ⚙️ Installation & Setup

1. **Clone the repository**
```bash
git clone https://github.com/your-username/personal-blog-django.git
cd personal-blog-django
```

2. **Create & activate virtual environment**
```bash
python -m venv env
source env/bin/activate  # On Windows: env\Scripts\activate
```

3. **Install dependencies**
```bash
pip install django
```

4. **Apply migrations**
```bash
python manage.py makemigrations
python manage.py migrate
```

5. **Create a superuser**
```bash
python manage.py createsuperuser
```

6. **Run the server**
```bash
python manage.py runserver
```

7. **Access the site**
- Blog: `http://127.0.0.1:8000/`
- Admin Panel: `http://127.0.0.1:8000/admin/`

---

## 🧱 Django Model (blog/models.py)

```python
from django.db import models

class Post(models.Model):
    title = models.CharField(max_length=200)
    summary = models.TextField()
    body = models.TextField()
    public_date = models.DateField()
    image = models.ImageField(upload_to='images/')
```

---

## 💡 Notes

- In `settings.py`, add:
```python
MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR / 'media'
```

- In project-level `urls.py`, add:
```python
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    # your existing routes
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
```

---

## ✨ Future Improvements

- Add comment section with user login  
- Pagination for blog post listing  
- Rich-text editor for post content  

---

## 🙋‍♂️ Author

**Venkata Taraka Nadh Nanduri**  
tarakanadh99@gmail.com | https://www.linkedin.com/in/venkata-taraka-nadh-nanduri-39a069294/ | [GitHub](https://github.com/tarakanadhnanduri99) | [Portfolio](https://tarakanadh-portfolio.netlify.app)
