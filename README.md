Student CRUD System

This is a simple **Laravel CRUD application** for managing student records.  
It allows you to **Create**, **Read**, **Update**, and **Delete** student details.

---

Setup Instructions

1. Clone or Copy the Project
Place the project folder inside your Laragon `www` directory:
```
C:\laragon\www\student-crud
```

2. Start Laragon
- Open **Laragon**
- Click **Start All** to run **Apache** and **MySQL**

3. Open Laragon Terminal
```bash
cd C:\laragon\www\student-crud
```

4. Install Dependencies
```bash
composer install
```

5. Environment Setup
```bash
cp .env.example .env
php artisan key:generate
```

Update your `.env` file with your database settings (MySQL):
```
DB_DATABASE=student_crud
DB_USERNAME=root
DB_PASSWORD=
```

6. Run Database Migration
```bash
php artisan migrate
```

7. Run the Application
```bash
php artisan serve
```

Visit: [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

Built With
- Laravel 10+
- PHP 8+
- MySQL
- Laragon

---

Author
**Chamidi Lakshika**  

