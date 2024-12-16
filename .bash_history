sudo apt update && sudo apt upgrade -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install openjdk-11-jdk jenkins -y
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
ls -l /usr/share/keyrings/jenkins-keyring.asc
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install openjdk-11-jdk jenkins -y
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins.service
sudo apt update
sudo apt install openjdk-11-jdk -y
java -version
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins.service
sudo apt update
sudo apt install openjdk-17-jdk -y
java -version
sudo update-alternatives --config java
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins.service
sudo nano /lib/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo journalctl -xeu jenkins.service
sudo nano /lib/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
nano Jenkinsfile
docker login
sudo usermod -aG docker $USER
groups $USER
exit
