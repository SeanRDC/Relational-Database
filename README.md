<a id="readme-top"></a>

<!-- PROJECT SHIELDS -->
[![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)
![FreeCodeCamp](https://img.shields.io/badge/freecodecamp-%230A0A23.svg?style=for-the-badge&logo=freecodecamp&logoColor=white)

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <h3 align="center">Bash Scripting & SQL Database Projects</h3>

  <p align="center">
    A collection of database management scripts and interactive shell programs built using PostgreSQL and Bash. Includes robust ETL pipelines, querying tools, and terminal-based applications.
    <br />
    <br />
    <strong>Tags:</strong> <code>bash</code>, <code>postgresql</code>, <code>shell-scripting</code>, <code>sql</code>, <code>etl</code>, <code>database-management</code>, <code>backend</code>, <code>automation</code>, <code>data-processing</code>, <code>linux</code>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#project-structure">Project Structure</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

This repository showcases various practical applications of Bash scripting intertwined with relational database management using PostgreSQL. It includes terminal-based games, administrative scripts for a student database, a complete bike rental shop CLI application, and tools to parse, query, and insert data from CSV files into normalized SQL databases.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* **Scripting Language:** Bash
* **Database Engine:** PostgreSQL
* **Data Formats:** CSV, SQL Dumps

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- PROJECT STRUCTURE -->
## Project Structure

```text
Bash Scripting/
├── bingo.sh                   # Number generator logic
├── countdown.sh               # Timer utility
├── five.sh                    # Orchestration script
├── fortune.sh                 # Terminal fortune teller game
└── questionnaire.sh           # Interactive CLI questionnaire

Bikes Database SQL & BASH SCRIPTS/
├── bike-shop.sh               # Main CLI app for renting/returning bikes
└── bikes.sql                  # Database schema and initial data dump

Student Database SQL & BASH SCRIPTING/
├── courses.csv                # Raw course data
├── students.csv               # Raw student data
├── insert_data.sh             # ETL script to populate the students database
└── student_info.sh            # Complex querying and reporting script

Root Scripts & Databases/
├── element.sh                 # Periodic table query too
├── periodic_table.sql         # Periodic table schema and data
├── insert_data.sh             # World Cup data ingestion script
├── queries.sh                 # World Cup data analysis queries
├── worldcup.sql               # World Cup database schema
├── number_guess.sh            # Number guessing game with user stat tracking
├── number_guess.sql           # Database schema for the guessing game
├── salon.sh                   # Appointment booking CLI system
├── salon.sql                  # Salon database schema
└── universe.sql               # Celestial bodies database schema
