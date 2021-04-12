-- inserting data
-- clientTable
INSERT INTO clientT VALUES
('C001','Sara',  'Phillips', 'phillpss@wit.edu', 'password234', '1998/6/8', 'F', '2020/12/10'),
('C002','Sabrina',  'Ta', 'tas@wit.edu', 'password34', '1999/10/8', 'F', '2020/12/31'),
('C003', 'Joseph',  'Mahmoud', 'mahmoudjwit.edu', 'password!', '1998/11/4', 'M', '2021/1/14'),
('C004','Julia',  'Macdonald', 'macdonaldj@wit.edu', 'password1000','1998/5/31', 'F', '2021/1/29'),
('C005','Jaxon',  'Nelan', 'nelanj@wit.edu', 'pwisthis223', '2000/6/8', 'M', '2021/2/5'),
('C006','Zack', 'Daubert', 'daubertz@wit.edu', 'ilikepasswords33','2001/3/3', 'M', '2021/3/23');

-- publisherTable
INSERT INTO articlesT VALUES
('100001',  'Booking a Tech Spot Appointment',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=5b80e5001bcb14102cb1b992cc4bcb1d','book appointment tech-spot meeting in person repair'),
('100002',  'Resetting Passwords',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=c730039f1bb2d0102cb1b992cc4bcb4c', 'forgot old new password reset passwords pass cannot login'),
('100003',  'Connecting other devices to Wireless',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=d1a1be601b4394102cb1b992cc4bcb61', 'connecting wireless device adruino raspberry pi smart devices google home alexa amazon firestick chromecast'),
('100004',  'Software Licenses',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=2e61e25c1b4ee4505cc50fe7cc4bcbb7', 'software licenses how obtain license'),
('100005',  'Installing Software on a PC',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=39c0cc2f1b2c64102cb1b992cc4bcb95', 'installing download software pc vpn'),
('100006',  'Off-Campus Software Access',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=c7a18477dba42810228a45d30596199b','software access off campus not in campus vpn'),
('100007',  'Off Campus Login Guide',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=102c5099dbad6410228a45d30596193a', 'off campus log in not on campus'),
('100008',  'Aimsun Next',  'https://wit.service-now.com/techspot?sys_kb_id=49f66e681b0394102cb1b992cc4bcb06&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=b3dcff591bd7581063590d87cc4bcbf3', 'aimsun next download off campus license'),
('100009',  'Autodesk AutoCAD',  'https://wit.service-now.com/techspot?sys_kb_id=cddd60fe1b570050422c31dcdd4bcbf1&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=f1f004e11b1b581063590d87cc4bcb21', 'autocad autodesk software install'),
('100010',  'Autodesk AutoCAD Civil 3D',  'https://wit.service-now.com/techspot?sys_kb_id=8ddda0fe1b570050422c31dcdd4bcb1e&id=kb_article_view&sysparm_rank=2&sysparm_tsqueryId=b81184e11b1b581063590d87cc4bcb52', 'Autodesk AutoCAD Civil 3D install download'),
('100011',  'Autodesk Navisworks',  'https://wit.service-now.com/techspot?sys_kb_id=a4dda0fe1b570050422c31dcdd4bcb1a&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=e55100251b1b581063590d87cc4bcb8d', 'Autodesk Navisworks install'),
('100012',  'Autodesk Revit',  'https://wit.service-now.com/techspot?sys_kb_id=b8dd60fe1b570050422c31dcdd4bcb1c&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=c471c8e11b1b581063590d87cc4bcb34', 'Autodesk Revit install'),
('100013',  'COMSOL Multiphysics',  'https://wit.service-now.com/techspot?sys_kb_id=b4dd60fe1b570050422c31dcdd4bcb27&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=a681cce11b1b581063590d87cc4bcbff', 'COMSOL Multiphysics install'),
('100014',  'Keyshot',  'https://wit.service-now.com/techspot?sys_kb_id=57cb5f761b03d01063590d87cc4bcb2a&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=64a1c8651b1b581063590d87cc4bcbd0', 'keyshot install download'),
('100015',  'Solidworks',  'https://wit.service-now.com/techspot?sys_kb_id=01b983a41b8394102cb1b992cc4bcb4b&id=kb_article_view&sysparm_rank=1&sysparm_tsqueryId=8b42cca51b1b581063590d87cc4bcb88', 'solidwork solidworks download install'),
('100016',  'Laptop Program',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=231d0a641bcf54102cb1b992cc4bcb3e', 'laptop program wentworth free laptop '),
('100017',  'Media Services',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=0c1452fd1bec60102cb1b992cc4bcbfb', 'Media Services loan camera laptop microphone conference room'),
('100018',  'Printing, Plotting, and Scanning',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=d3f1099bdb2a6010228a45d3059619a7', 'Printing Plotting Scanning print plot scan'),
('100019',  'Usernames and Passwords',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=b50c46b81b76945063590d87cc4bcbd2', 'Usernames and Passwords change user pass'),
('100020',  'Print Quota',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=e3a4091b1b6660105cc50fe7cc4bcb31', 'Print Quota money printing papercut'),
('100021',  'Xfinity on Campus',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=3db2e3b11bca20105cc50fe7cc4bcb7f', 'Xfinity wifi Campus'),
('100022',  'Preferred Name',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=fdcb6d6e1bcf0410422c31dcdd4bcb07', 'Preferred Name prefer'),
('100023',  'Follow Me Printing',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=267a24011b03d41063590d87cc4bcbeb', 'Follow Me Printing print campus'),
('100024',  'Connecting to eduroam on a PC',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=296a6cc61bc758102cb1b992cc4bcb61', 'Connecting eduroam PC wifi campus'),
('100025',  'Wolfram Mathematica',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=a0dd60fe1b570050422c31dcdd4bcb18', 'Wolfram Mathematica install download'),
('100026',  'Adobe Creative Cloud DC',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=841722a81b0394102cb1b992cc4bcbc2', 'Adobe Creative Cloud DC download license install'),
('100027',  'Two-factor Authentication',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=9b05cefc1b36945063590d87cc4bcb97', 'Two-factor Authentication authy not duo security log on failed login '),
('100028',  'Plotting',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=c2b96d2e1bcf0410422c31dcdd4bcb6d', 'Plotting library plot'),
('100029',  'Matlab',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=e3b095161b7c60105cc50fe7cc4bcb9c', 'Matlab install download'),
('100030',  'OneDrive',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=b739519a1b070410422c31dcdd4bcb1c', 'OneDrive backup file savings one drive'),
('100031',  'Laptop Repair',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=f88925efdbcf08106bb3f13968961939', 'Laptop Repair broken screen cracked not working liquid sticky broke fell'),
('100032',  'Rhino',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=73b5d6f51b5b14502cb1b992cc4bcbdb', 'Rhino download install'),
('100033',  'Tech Spot',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=85f71f161bd7cc10422c31dcdd4bcb61', 'Tech Spot support help'),
('100034',  'Zoom Conferencing',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=e305f4ce1bc758102cb1b992cc4bcbfa', 'zoom video call class conference'),
('100035',  'Master of Architecture',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=57f21f121bd7cc10422c31dcdd4bcb41', 'Master of Architecture graduate arch'),
('100036',  'Readmitted Students',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=cff29b121bd7cc10422c31dcdd4bcbf8', 'coming back old student readmitted readmitting returning'),
('100037',  'Co-op & Student Employment',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=f5c99b961bd7cc10422c31dcdd4bcb9b', 'coop co op student employment campus jobs'),
('100038',  'Viruses and Spyware',  'https://wit.service-now.com/techspot?id=kb_article_view&sys_kb_id=35db616e1bcf0410422c31dcdd4bcbaf', 'virus spyware bug phishing advertising ads');


-- systemRequirementsTable
INSERT INTO conversationT VALUES -- learn to connect the convo to convoID
('AAAAAA', 'C001', '100026', '2020/12/10'),
('AAAAAB', 'C002', '100026', '2020/12/31'),
('AAAAAC', 'C003', '100026', '2021/1/14'),
('AAAAAD', 'C004', '100026', '2021/1/29'),
('AAAAAE', 'C005', '100026', '2021/2/5'),
('AAAAAF', 'C006', '100026', '2021/3/23'),
('AAAAAG', 'C002', '100026', '2021/2/14'),
('AAAAAH', 'C001', '100026', '2021/2/28');
