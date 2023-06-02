
### שם המתכנת: אלעד וידיסלבסקי.
### שם המורה: ברק צוברי.
### כיתה:י'6
### בית ספר:ישיבת בני עקיבא גבעת שמואל
### שנת הגשה:2023.
# מה התוכנית עושה:
התוכנית קולטת מהמשתמש מוצרים שהוא קנה.
התוכנית תדפיס למשתמש את רשימת הקניות שלו.
בנוסף, התוכנית תדפיס למשתמש את המוצר הכי יקר ואת המוצר הכי זול שלו.
# הפעולות שהמשתמש יכול לבצע:
המשתמש יכול להכניס מוצרים שהוא קנה ואת המחיר שלהם, לראות את רשימת הקניות שלו ולראות מה המוצר הכי יקר ומה המוצר הכי זול שהוא קנה.
# דוגמאות ריצה
## דוגמה לשלושה מוצרים כאשר הכי זול מופיע באמצע:
![image](https://github.com/baraksu/ShoppingCard/assets/132655967/71f9b91e-73a8-45da-a148-e5862cffe1f6)

## דוגמה לשלושה מוצרים כאשר הכי זול מופיע בהתחלה:
![image](https://github.com/baraksu/ShoppingCard/assets/132655967/5fbd5afa-259c-4713-b7d9-060a401228fd)

## דוגמה לשלושה מוצרים כאשר הכי זול מופיע בסוף:
![image](https://github.com/baraksu/ShoppingCard/assets/132655967/f8ef4829-c64a-4d13-a160-2697d467a36b)

## דוגמה לארבעה מוצרים במיקומים רנדומליים:
![image](https://github.com/baraksu/ShoppingCard/assets/132655967/eaf35a41-0de1-427c-8ad5-4c29d5229a6b)


# שלבי הפיתוח
## שלב א'
תחילה, הייתי צריך לקלוט את כל השמות של המוצרים ומחירם לתוך מערך לשם כך הגדרתי מערך products שכל פעם אחרי קליטה של שם מוצר העלתי אותו ב10H ואחרי קליטה של מחיר מוצר העלתי אותו ב6H כך שכל השמות והמחירים היו במרווחים קבועים אחד מהשני.
## שלב ב
לאחר מכן, הדפסתי את המערך, לשם כך השתמשתי בcounter שעזר לי להעלות את הערך של bx כדי שאני אדפיס את החלק הנכון במערך. עשיתי לולאה שמדפיסה מוצר ואז מעלה את counter ב10H ומדפיזה את המחיר. אחרי הדפסת המחיר העלתי את counter ב6H וסיימתי את הלולאה וכך הדפסתי את כל המוצרים.
## שלב ג'
כעת, הדפסתי את המוצר הכי יקר והכי זול. הדפסת המוצר היקר והזול זה כמעט אותו דבר לכן חלק זה של הפרויקט היה יותר קל. בלולאה של המוצר הכי יקר השתמשתי בmaxNum ובלולאה של המוצר הכי זול השתמשתי בminNum. שמתי בתוכם את הערך של המוצר הראשון והשוויתי לשני שהיה שמור בתוך ax ואם הוא היה יותר גדול בלולאת המוצר היקר או יותר זול בלולאת המוצר הזול קפצתי לתווית שמשנה את maxNum או minNum לאחר מכן קפצתי לראש הלולאה ושיניתי את ax למוצר השלישי ואז לרביעי וכן הלאה.
## שלב ד'
כעת, מדפיסים הודעה המבקשת להקיש על כל מקש שהוא כדי לסגור את התוכנית, וכאשר קולטים את הלחיצה, מחזירים את השליטה לאמולטור.
# הוספות לעתיד
לעתיד הייתי מוסיף אפשרות לחשב את סכום הקנייה כדי לדעת כמה עלתה הקנייה ולחשב את הממוצע של מחיר מוצר.
# סיכום אישי
העבודה על הפרויקט הייתה קשה אך מספקת. ביליתי הרבה מאוד זמן בניסיון לפצח את זה ולהצליח לסיים את הפרויקט, ונהנתי למצוא בכל פעם את הפתרון לכל בעיה בכל פעם. אני מרגיש מאוד מרוצה מהתוצאה, הרי המון זמן ניסיתי עד שלבסוף הצלחתי ואין סיפוק יותר גדול מזה, וכן התגברתי על קשיים רבים, כך שקיבלתי תוצאה מצוינת שלא יכולתי לקבל אילולא עבדתי קשה והתמדתי בנסיונותי לפתור זאת. לבסוף אני רוצה להגיד תודה לכל מי שעזר לי לסיים את הפרויקט, המורה שלי, המורה ברק צוברי, והרבה תמיכה של חברים בלעדיהם לא הייתי מצליח. **הסוף**.
