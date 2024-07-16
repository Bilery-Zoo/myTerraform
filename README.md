

                    _____                    __                      
     _ __ ___  _   |_   _|__ _ __ _ __ __ _ / _| ___  _ __ _ __ ___  
    | '_ ` _ \| | | || |/ _ \ '__| '__/ _` | |_ / _ \| '__| '_ ` _ \ 
    | | | | | | |_| || |  __/ |  | | | (_| |  _| (_) | |  | | | | | |
    |_| |_| |_|\__, ||_|\___|_|  |_|  \__,_|_|  \___/|_|  |_| |_| |_|
               |___/                                                 


About Repository

    An IaC practice/exercise on my local.
    At current only including AWS cloud.
    Also most generally useful services [VPC, EC2 and RDS] for position of DBA (me) are to play.

Folder tree

    ├── command-ref
    ├── LICENSE
    ├── main.tf
    ├── modules
    │   ├── ec2
    │   │   ├── main.tf
    │   │   ├── outputs.tf
    │   │   ├── providers.tf
    │   │   ├── terraform.tfvars
    │   │   └── variables.tf
    │   ├── rds
    │   │   ├── main.tf
    │   │   ├── option_group.tf
    │   │   ├── outputs.tf
    │   │   ├── parameter_group.tf
    │   │   ├── password.tf
    │   │   ├── providers.tf
    │   │   ├── subnet_group.tf
    │   │   ├── terraform.tfvars
    │   │   └── variables.tf
    │   └── vpc
    │       ├── main.tf
    │       ├── outputs.tf
    │       ├── providers.tf
    │       ├── terraform.tfvars
    │       └── variables.tf
    ├── outputs.tf
    ├── providers.tf
    ├── README.md
    ├── terraform.tfvars
    └── variables.tf

Before Launching

    Install Terraform and Config your provider environment, eg:
        providers.tf

See also

&ensp;&ensp;&ensp;&ensp;[Terraform Tutorials](https://developer.hashicorp.com/terraform/tutorials)  
&ensp;&ensp;&ensp;&ensp;[AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)  
&ensp;&ensp;&ensp;&ensp;[Getting started with Terraform](https://docs.aws.amazon.com/prescriptive-guidance/latest/getting-started-terraform/introduction.html)
