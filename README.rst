Introduction
------------

The set of ``.tf`` files will:

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

To run the examples
-------------------

1. Delete all ``terraform*`` files

   .. code-block:: shell

      rm -rf terraform*

2. Make sure your FortiManager isn't having any existing ADOM named
   ``demo_001``. If it does exist go to step 4 directly.

3. Run terraform

   .. code-block:: shell

      terraform init
      terraform apply

4. If ADOM ``demo_001`` already exists, you can use a different ADOM named

   .. code-block:: shell
 
      terraform apply -var="adom_id=2"

   ADOM ``demo_002`` will be created.

5. Should you want to retry but using a different ADOM name

   .. code-block:: shell

      rm -rf terraform*
      terraform apply -var="adom_id=3"

.. note::
    
   ``adom_id`` should be in range [1-999].


