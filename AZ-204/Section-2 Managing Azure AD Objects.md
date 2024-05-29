### User Account in AzureAD

- Azure Active directory basically supports three types of user accounts:
  1. Cloud Identity
  2. Synchronized Identity
  3. Guest User

- Cloud Identity
  - Cloud identities can be used for user accounts that are defined not only in your Azure ad organization but also for user accounts that are in external Azure Ad instances directory.

- Synchronized Identity
  - Synchronized identities are defined in an on prem Active Directory.
  - Basically you get a synchronized identity when a user account is synchronized from the on prem Active Directory into Azure AD via something like Azure Ad Connect or Azure Ad Connect Cloud Sync.
  - It's important to note that the source for a directory synchronized identity is the Windows Server Active

- Guest User
  - Guest users that are defined outside of Azure.
  - These type of accounts are used when you have external vendors or maybe contractors that need to access your Azure resources.


### Group Account in AzureAD

- Azure Active Directory allows you to define two different types of group accounts.
  - Security groups
  - Microsoft 365 groups

- Security groups
  - Security groups are used to manage user and computer access to resources for a group of users or devices. In other words, you might create a security group called Finance App users for users that need access to a particular finance app.

- Microsoft 365 groups
  - Members of a microsoft 365 group will often have access to things like a shared mailbox or a shared calendar files, a SharePoint site, etc.

**Microsoft recommends using security groups to grant permissions to a resource for all group members at the same time, rather than adding permissions for individual users in a one off fashion.**


- How users can be added to group
  1. Assigned
  2. Dynamic User
  3. Dynamic Device


### Bulk User Upload

- Azure AD supports several bulk operations including bulk create abd bulk delete.
- We can use azure portal or azure powershell for bulk uploads.