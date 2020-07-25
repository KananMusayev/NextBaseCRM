Feature:  As a user, I should be able to send messages by clicking on Message tab under Active Stream.

  Background:
    Given User is on homepage and MESSAGE is displayed under ACTIVITY STREAM
    Then User clicks on Messages tab under Activity Stream Module


 # User should be able to click on upload files icon to upload files and pictures from local disks.
	#
  @P7-81
  Scenario: Upload File Icon functionality under New Message


    When User clicks on UPLOAD FILES icon
    Then User sees UPLOAD OPTIONS at the bottom of MESSAGE INPUT FIELD

    # User should be able to add users from selecting contact from E-mail user, Employees and Departments and Recent contact lists.
	#
  @P7-95

  Scenario: User ability to add users from contact

    Then User locates To box, clears it and clicks on Add persons, groups and department
    Then From Recent Module user clicks on desired contacts
    Then User clicks on  Employees and Departments  module and chooses first contact
    Then User clicks on Email users
    Then User sees added contacts on  To  box

    #User should be able to  attach link by clicking  on link icon
  @P7-97

  Scenario Outline: User's ability to attach link

    Then User locates and clicks on LINK icon
    Then User enters "<LINK TEXT>" and "<LINK URL>" and clicks save
    Then User sees LINK TEXT "<LINK TEXT>" LIGHT BLUE in Message Console

    Examples:
      | LINK TEXT  | LINK URL                |
      | Google.com | https://www.google.com/ |

    #User should be able to insert videos by clicking on the video icon and inserting video URL
  @P7-99

  @upload
  Scenario: Ability of user to insert videos under Messages
    Given User is on homepage and MESSAGE is displayed under ACTIVITY STREAM
    Then User clicks on Messages tab under Activity Stream Module
    Then User locates Video icon and clicks
    Then User enters video URL and waits until video is loaded and clicks Save
    Then User sees video is displayed on Message Console
