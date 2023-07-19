USE PRN211_Online_Store

-- USER
select * from [User] where username = 'huyenntk';
select * from Feedback where rating = 0;
select * from Feedback where username = 'huyenntk';
select * from FeedbackAttachment where feedbackId in (28);