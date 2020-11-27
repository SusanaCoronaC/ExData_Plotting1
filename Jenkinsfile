pipeline {
  agent any
  stages {
    stage('Inicio_environment') {
      steps {
        echo 'Iniciando construcción'
      }
    }

    stage('instalacion') {
      steps {
        sh 'gcc -v'
      }
    }

    stage('compilacion') {
      steps {
        sh '''gcc programa.c -o mi_programa
ls -ltr'''
      }
    }

  }
}