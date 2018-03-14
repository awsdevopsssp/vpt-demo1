node {
    stage ('SCM'){
   checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'ssp-git-creds', url: 'https://github.com/awsdevopsssp/vpt-demo1.git']]])
}
stage ('Echo'){
    sh "echo 'hi hello'"
}
stage ('Run Script'){
    sh "sh simple.sh"
}
}
