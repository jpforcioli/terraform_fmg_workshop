Introduction
============

This set of ``.tf`` files will:

1. Create an ADOM 

   The ADOM version will be the same as the FortiManager version. For instance,
   if FortiManager version is 6.2.7 the ADOM version will be 6.2.

2. Create a Model Device. The created model device will be a FortiGate-60E.

3. Create firewall addresses from terraform static string and variables

4. Change the color of one firewall address 

5. Create firewall addresses from CSV file ``firewall_addresses.csv``

6. Create firewall address group with firewall addresses from CSV file as
   members

7. Create a policy package using the model device as installation target

8. Create a firewall policy using above created objects

9. Set the section title of the newly created policy

10. Install the policy package against the model device

Instructions
============

1. Install terraform according to the instruction given `here
   <https://www.terraform.io/downloads.html>`_ 

2. Clone this the git ``terraform_fmg_workshop``

   .. code-block:: shell

      git clone https://github.com/jpforcioli/terraform_fmg_workshop.git
      cd terraform_fmg_workshop

3. Load the terraform required providers

   .. code-block:: shell

      terraform init

4. Make sure your FortiManager isn't having any existing ADOM named
      ``demo_001``. If it does exist go to step 6 directly.
   
5. Run the example files

   .. code-block:: shell

      terraform apply

6. If ADOM ``demo_001`` already exists, you can use a different ADOM name

   .. code-block:: shell
 
      terraform apply -var="adom_id=2"

   ADOM ``demo_002`` will be created.

8. Should you want to retry but using a different ADOM name

   .. code-block:: shell

      rm -rf terraform*
      terraform apply -var="adom_id=3"

.. note::
    
   ``adom_id`` should be in range [1-999].
