{
  users = {
    users.ywyh = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "docker" ];
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDOjMO1aRB5gJvs7IXZYUXYexrC8rWACnvbsr+Fjovfves4TW9PrzTcFW8mMFQfBztA0O+iSfSOOYK06w4/P5cTQCtgzUoua1T/Z7kemxL7v0+YlOBad3oIlE15hzu0s5OG49mb0yrOXspbbwcyINqg8nejBsrhojM5rqQGnsYk3jjdHzXMXNO5yhlqgd0eBV8svg9NhB0/s3j3+HnO4tzqkl1j74Rt8oi22lQ1zE7JhGkA4omYj4ceEvWH7q30p+LmuUbgsSJvNC+vMtNRkY0GdD6uHXggl9G2tsXOzMNnpNi4EI0kd2QwbXNfAsqMQKnSyWsV24XNEIvYjlmCVFs+E26lul0ZO5ZKteOSE298exbEjcwyNAtdDUFFYT86H+ZjfgKCAukq78RS7J9jjKK2k1SvhR5zILiZx+0KqPlKA9FLtJmx/TKFzQTBzrI/9/O7CWtwiFLk9sg5BsUKKDh87hDKD+0AZdImrBsQV+BaTJmTzAReoPAatTFFqLuari6pi9I7TAgmoMl532c64VB+0986fsfizyj0nZllKsNK+Bx8Yg5lWb++h9R8SLiGQeB85KDz2mCTPD6v/D+Q7hfFvPwaZ6ETvhVAGyFC80pEBKdVSn79S89czHsnduu6HUGI+j5z1hAJ6+H7h1IayqS/T83X6XZavLpw3N/BvfnnUw== yassienwyh0@gmail.com"
      ];
    };
  };
}