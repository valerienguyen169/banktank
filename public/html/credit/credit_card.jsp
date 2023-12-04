<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Credit Card</title>

    <!-- Montserrat Font -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

    <!-- Custom CSS -->
    <style> 
body {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  background-color: #1d2634;
  color: #9e9ea4;
  font-family: 'Montserrat', sans-serif;
}

.material-icons-outlined {
  vertical-align: middle;
  line-height: 1px;
}

.grid-container {
  display: grid;
  grid-template-columns: 260px 1fr 1fr 1fr;
  grid-template-rows: 0.2fr 3fr;
  grid-template-areas:
    'sidebar header header header'
    'sidebar main main main';
  height: 100vh;
}

/* ---------- SIDEBAR ---------- */

#sidebar {
  grid-area: sidebar;
  height: 100%;
  background-color: rgb(246, 247, 244);
  overflow-y: auto;
  transition: all 0.5s;
  -webkit-transition: all 0.5s;
}

.sidebar-title {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px 20px 20px 20px;
  margin-bottom: 30px;
}

.sidebar-title > span {
  display: none;
}

.sidebar-brand {
  margin-top: 15px;
  font-size: 25px;
  font-weight: 700;
}

.sidebar-list {
  padding: 0;
  margin-top: 15px;
  list-style-type: none;
}

.sidebar-list-item {
  padding: 20px 20px 20px 20px;
  
}

.sidebar-list-item:hover {
  background-color: rgba(116, 123, 116, 0.911);
  cursor: pointer;
}

.sidebar-list-item > a {
  text-decoration: none;
  color: #02020d;
}

.sidebar-responsive {
  display: inline !important;
  position: absolute;
  /*
    the z-index of the ApexCharts is 11
    we want the z-index of the sidebar higher so that
    the charts are not showing over the sidebar 
    on small screens
  */
  z-index: 12 !important;
}

/* ---------- MAIN ---------- */

.main-container {
  grid-area: main;
  overflow-y: auto;
  padding: 20px 20px;
  color: rgba(255, 255, 255, 0.95);
}

.main-title {
  display: flex;
  justify-content: space-between;
}

.main-cards {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  gap: 20px;
  margin: 20px 0;
}

.card {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  padding: 25px;
  border-radius: 5px;
}

.card:first-child {
  background-color: #2962ff;
}

.card:nth-child(2) {
  background-color: #ff6d00;
}

.card:nth-child(3) {
  background-color: #2e7d32;
}

.card:nth-child(4) {
  background-color: #d50000;
}

.card-inner {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.card-inner > .material-icons-outlined {
  font-size: 45px;
}

.charts {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 20px;
  margin-top: 60px;
}

.charts-card {
  background-color: #263043;
  margin-bottom: 20px;
  padding: 25px;
  box-sizing: border-box;
  -webkit-column-break-inside: avoid;
  border-radius: 5px;
  box-shadow: 0 6px 7px -4px rgba(0, 0, 0, 0.2);
}

.chart-title {
  display: flex;
  align-items: center;
  justify-content: center;
}

/* ---------- MEDIA QUERIES ---------- */

/* Medium <= 992px */

@media screen and (max-width: 992px) {
  .grid-container {
    grid-template-columns: 1fr;
    grid-template-rows: 0.2fr 3fr;
    grid-template-areas:
      'header'
      'main';
  }

  #sidebar {
    display: none;
  }

  .menu-icon {
    display: inline;
  }

  .sidebar-title > span {
    display: inline;
  }
}

/* Small <= 768px */

@media screen and (max-width: 768px) {
  .main-cards {
    grid-template-columns: 1fr;
    gap: 10px;
    margin-bottom: 0;
  }

  .charts {
    grid-template-columns: 1fr;
    margin-top: 30px;
  }
}

/* Extra Small <= 576px */

@media screen and (max-width: 576px) {
  .hedaer-left {
    display: none;
  }
}

    </style>
    <link rel="stylesheet" href="css/styles.css">
    
  </head>
  <body>
    
    <div class="grid-container">
      
      <!-- Sidebar -->
      <aside id="sidebar">
        <div class="sidebar-title">
          <div class="sidebar-brand">
            <span class="material-icons-outlined">bank</span> 
            <span class="text">CS Bank</span>
          </div>
          <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
        </div>

        <ul class="sidebar-list">
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "dashboard.html">
              <span class="material-icons-outlined">dashboard</span> Dashboard
            </a>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "transaction.html"> 
              <span class="material-icons-outlined">payment</span> Transactions
            </a>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "history.html"> 
              <span class="material-icons-outlined">history</span> Statement History
              </a>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "credit_card.html"> 
              <span class="material-icons-outlined">credit_card</span> Credit Card
              </a>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "profile.html"> 
              <span class="material-icons-outlined">settings</span> Profile
              </a>
            </a>
          </li>
          <li class="sidebar-list-item">
            <a href="#" target="_blank">
              <a href = "help.html"> 
              <span class="material-icons-outlined">help</span> Help
              </a>
            </a>
          </li>
        </ul>
      </aside>
      <!-- End Sidebar -->
      <main class="main-container">
        <div class="main-title">
          <p class="font-weight-bold">CreditCard</p>
        </div>

        <div class="main-cards">

          <div class="card">
            <div class="card-inner">
              <p class="text-primary">Credit Account</p>
              <span class="material-icons-outlined text-blue">account_balance</span>
         
        </div>
      </main>

    </div>
  </body>
</html>

