#! bin/bash

echo "//////////////////"
echo "Bienvenido a su instalador básico de LAMP"
echo "¡Comencemos a trabajar!"
echo "//////////////////"
apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "//////////////////"
echo "Hora de verificar si Apache2 está funcional"
sudo systemctl status apache2
echo "//////////////////"
echo "Verificando la versión de Apache2 instalada"
sudo apache2ctl -version
echo "//////////////////"
echo "Empecemos con la instalación de PHP"
echo "//////////////////"
apt-get install php8.1 libapache2-mod-php8.1 php8.1-mysql php8.1-gd php8.1 -curl php8.1-xml -y
echo "//////////////////"
echo "Verificando la versión de PHP instalada"
php --version
echo "//////////////////"
echo "Instalando MySQL"
apt-get install mysql-server -y
sudo systemctl start mysql
sudo systemctl enable mysql
echo "//////////////////"
echo "Hora de verificar si MySQL está funcional"
sudo systemctl status mysql
echo "//////////////////"
echo "Hora de verificar la versión de MySQL instalada"
mysql --version
echo "//////////////////"
echo "Hora de configurar una página de muestra de PHP"
echo "Generando archivo info.php..."
sleep 1s
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
echo "Archivo generado con éxito"
sleep 1s
echo "<?php $titulo= test";
\$titulo = "test";
\$descripcion = "Curso de Fundamentos de Sistemas Operativos, Universidad Fidélitas";?>
<!DOCTYPE html>
<html lang="es">
<body>
    <h1><?php echo \$titulo; ?></h1>
    <p><?php echo \$descripcion; ?></p>
</body>
</html>" > /var/www/html/test.php
echo "Archivo de prueba generado con éxito"
echo "Trabajo de instalación de LAMP completado :D"
