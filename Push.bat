@echo on
cd C:\Users\simh\Documents\python-training\DiceRolling
set root=C:\Users\simh\Miniconda3
cls
set /p id="Enter ID: "
set /p pw="Enter PASSWORD: "
cls
set /p cm="Enter COMMENT: "
call %root%\Scripts\activate.bat %root%
call activate learn-python
call set https_proxy=http://%id%:%pw%@appgw.amk.st.com:8080
call git config --global user.name "simhuiyee"
call git config --global user.email "cheryl.huiyee@gmail.com"
call git add .
call git commit -m "%cm%"
call git push
pause

