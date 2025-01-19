% Alphabets
A = imread('images\file01.png');
B = imread('images\file02.jpeg');
% ... (similarly for other alphabets)

% Natural Numbers
one = imread('images\file02.jpeg');
two = imread('images\file03.jpeg');
% ... (similarly for other numbers)

% Creating arrays for Alphabets and Numbers
letter = [A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
number = [one two three four five six seven eight nine zero];

% Combine Alphabets and Numbers templates
NewTemplates = [letter number];

% Save the templates
save('NewTemplates', 'NewTemplates');
clear all;
