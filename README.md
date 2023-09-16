# FarmaciaAppLaravel
Aplicación web de farmacia (venta de medicamentos a clientes). Creada en PHP con el framework Laravel, MySQL, Bootstrap CSS, HTML y JavaScript. Los datos se manipulan por medio de una Interfaz de programación de aplicaciones API.

## Capturas de Pantalla App
### Página Principal
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/560948ff-85fc-466a-9fe8-e090722759bb)

### Interfaz Clientes
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/c277d2d7-8476-40cd-9587-6dc3d276f55e)

### Creación de Nuevo Cliente
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/ff90895a-91a5-466c-8cf2-ec89d3de88ae)

### Edición de Cliente
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/e873abf8-a54b-44a7-9b62-0dab55ec9467)

### Eliminación de Cliente
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/1c0020c6-f55b-4ccb-8f71-53a0d983e58e)
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/9d82c8d3-d950-4179-872c-0a69493fea3d)

### Interfaz de Medicanentos
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/5d47f19c-5487-4d2f-ac0b-8e9cc74435b3)

### Interfaz de Ventas
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/cb98e8b1-ba5a-42dc-a37f-fc8f30d4ee5d)

### Interfaz de Carritos
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/b397d6b9-3eb5-43cc-b220-6272addc5c1b)

## Capturas de Pantalla API
### Clientes
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/2358aae3-bc4e-461f-9593-bfe38c911373)

### Medicamentos
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/ae4dbe84-cefe-40c5-a083-f83f7026bc82)

### Ventas
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/3f9746d5-3808-4f64-94e2-b81bc4f050ce)

### Carritos
![image](https://github.com/JeisonRoblero/FarmaciaAppLaravel/assets/89631773/40a643c9-48a8-4b14-92a2-858109688365)


## Requisitos

Asegúrate de tener instalados los siguientes requisitos antes de comenzar:

```bash
PHP >= 7.4
Composer
Node.js y npm
Laravel CLI
Servidor de base de datos (por ejemplo, MySQL)
```

## Requisitos

# Asegúrate de tener instalados los siguientes requisitos antes de comenzar:

```
# (PHP >= 7.4)
Composer
Node.js y npm
Laravel CLI
Servidor de base de datos (por ejemplo, MySQL)
```

## Instalación

1. Clona este repositorio en tu máquina local:

```
git clone https://github.com/JeisonRoblero/FarmaciaAppLaravel.git
```

2. Navega al directorio del proyecto:

```
cd FarmaciaAppLaravel
```

3. Instala las dependencias de PHP con Composer:

```
composer install
```

4. Copia el archivo de configuración de entorno y configura las variables de entorno necesarias:

```
cp .env.example .env
```

5. Genera una nueva clave de aplicación:

```
php artisan key:generate
```

6. Configura tu base de datos en el archivo `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_database_username
B_PASSWORD=your_database_password
```

7. Ejecuta las migraciones y las semillas para configurar la base de datos:

```
php artisan migrate --seed
```

8. Inicia el servidor de desarrollo:

```
php artisan serve
```

9. Accede a la aplicación en tu navegador: `http://localhost:8000`


# Info Instalación Laravel

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 1500 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[OP.GG](https://op.gg)**
- **[WebReinvent](https://webreinvent.com/?utm_source=laravel&utm_medium=github&utm_campaign=patreon-sponsors)**
- **[Lendio](https://lendio.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
=======

>>>>>>> 7c7c98c30970bea460b42b3a70c049474efd336d
