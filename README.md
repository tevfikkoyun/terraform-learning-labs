# \# Terraform Learning Labs

# 

# This repository documents my hands-on journey learning Terraform and AWS Infrastructure as Code (IaC).

# 

# The goal of these labs was to build a strong foundation in Terraform while deploying real AWS infrastructure components step by step.

# 

# \---

# 

# \## Labs Overview

# 

# | Lab    | Topic                                           |

# | ------ | ----------------------------------------------- |

# | Lab 01 | Terraform Fundamentals                          |

# | Lab 02 | AWS Provider and S3                             |

# | Lab 03 | EC2 and Security Groups                         |

# | Lab 04 | VPC and Subnets                                 |

# | Lab 05 | Route Tables, Internet Gateway, and NAT Gateway |

# | Lab 06 | Bastion Host and Private EC2                    |

# | Lab 07 | Application and Database Security Group Design  |

# | Lab 08 | Remote State with S3 Backend                    |

# | Lab 09 | Terraform Modules                               |

# | Lab 10 | Amazon RDS                                      |

# | Lab 11 | Application Load Balancer (ALB)                 |

# | Lab 12 | Production Architecture                         |

# 

# \---

# 

# \## Technologies Used

# 

# \* Terraform

# \* Amazon VPC

# \* Amazon EC2

# \* Amazon RDS

# \* Application Load Balancer (ALB)

# \* NAT Gateway

# \* Internet Gateway

# \* Security Groups

# \* Route Tables

# \* Remote State (S3)

# \* Terraform Modules

# 

# \---

# 

# \## Key Concepts Learned

# 

# \* Infrastructure as Code (IaC)

# \* Public and Private Subnet Design

# \* High Availability Principles

# \* Security Group Referencing

# \* Bastion Host Architecture

# \* Database Security Design

# \* Remote Terraform State Management

# \* Load Balancing and Health Checks

# \* Modular Terraform Development

# 

# \---

# 

# \## Final Production Architecture

# 

# The final lab combines the concepts learned throughout the repository into a production-style AWS environment.

# 

# ```text

# Internet

# &#x20;   ↓

# Application Load Balancer

# &#x20;   ↓

# Private Application Servers

# &#x20;   ↓

# Amazon RDS

# 

# Public Bastion Host

# NAT Gateway

# Public and Private Subnets

# Security Group Tiering

# ```

# 

# \---

# 

# \## Repository Purpose

# 

# This repository focuses on learning Terraform and AWS infrastructure concepts through incremental hands-on labs.

# 

# A separate project repository will be used for a complete production-style application deployment including:

# 

# \* Node.js Application

# \* Amazon RDS Integration

# \* CloudWatch Monitoring

# \* SNS Alerting

# \* GitHub Actions CI/CD

# 

# \---

# 

# \## Author

# 

# Tevfik Koyun

# 

