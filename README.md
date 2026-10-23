# 🎬 FilmReview

Prosta aplikacja webowa stworzona w Ruby on Rails, służąca do oceniania i komentowania filmów.

## ✨ Główne funkcje
- Przeglądanie listy filmów wraz ze średnią oceną.
- Szczegółowy widok filmu (opis, reżyser, data premiery).
- System rejestracji i logowania użytkowników (Devise).
- Dodawanie, edytowanie i usuwanie filmów (tylko dla zalogowanych).
- Dodawanie recenzji (ocena w skali 1-5 + komentarz) oraz ich usuwanie przez autora.

## 🛠️ Technologie
- **Backend:** Ruby on Rails 8.x
- **Baza danych:** PostgreSQL
- **Frontend:** ERB, Tailwind CSS (poprzez `tailwindcss-rails`)
- **Uwierzytelnianie:** Devise
- **Testy:** RSpec, FactoryBot, Capybara

## 🚀 Uruchomienie lokalne

Aby uruchomić projekt na swoim komputerze, potrzebujesz zainstalowanego Ruby (w wersji 3.x) oraz PostgreSQL.
