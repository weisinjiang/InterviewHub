# Database Structure

# Users Collection

| userID | String |  |
| --- | --- | --- |
| firstName | String |  |
| lastName | String |  |
| email | String |  |
| dateOfBirth | Map |  |
| photoURL | String |  |
| userGroups | List<String> | buisnessOwner, applicant |

# Profile Collection

Additional detail based on the the userGroup of the Users collection

| userId | Maps to users Collection |  |
| --- | --- | --- |
| profileType | String | buisnessOwner or Applicant |
|  |  |  |

# BuisnessOwner Collection

| name | String |  |
| --- | --- | --- |
| address | Map |  |
| owner | String | Maps to the owner in Users collection |
| buisnessID | String  |  |

# Applications Collection

| applicantUid | String | Maps to User collection |
| --- | --- | --- |
| businessUid | String  | Maps to buisness |
| status | String | PENDING, REVIEW |
| userId | String | maps to User Collection  |
| details | Map |  |
| detailsKey | List<String> | owners can define their own fields that they want to ask their hires. This key is used to get key information from the details Map |