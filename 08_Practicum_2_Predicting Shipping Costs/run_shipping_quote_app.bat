@echo off
setlocal
cd /d "%~dp0"
echo Starting Shipment Cost Quote Assistant...
python -m streamlit run shipping_quote_app.py
if errorlevel 1 (
    echo.
    echo The app could not start. Install its requirements first with:
    echo python -m pip install -r requirements-shipping-quote-app.txt
    pause
)
