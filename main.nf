// vi: syntax=groovy si sw=2 et sts=2 bs=2
nextflow.enable.dsl = 2

process awscli {
  debug true
  container 'public.ecr.aws/aws-cli/aws-cli:latest'

  script:
  """
  aws sts get-caller-identity
  """
}


workflow {
  awscli()  
}
