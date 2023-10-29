import './config'; // Load environment variables
import 'express-async-errors'; // Enable default error handling for async errors
import express, { Express } from 'express';
import session from 'express-session';
import connectSqlite3 from 'connect-sqlite3';
import { validateNewCustomerBody, validateLoginBody } from './validators/authValidator';

import { registerUser, logIn, getCustomerDashboard } from './controllers/CustomerController';
import { processTransaction } from './controllers/AccountController';

const app: Express = express();
app.set('view engine', 'ejs');

const { COOKIE_SECRET } = process.env;
let { PORT } = process.env;
PORT = process.argv[2] || PORT;

const SQLiteStore = connectSqlite3(session);
const store = new SQLiteStore({ db: 'sessions.sqlite' });

app.use(express.static('public', { extensions: ['html'] }));

app.use(
  session({
    store,
    secret: COOKIE_SECRET as string,
    cookie: { maxAge: 8 * 60 * 60 * 1000 },
    name: 'session',
    resave: false,
    saveUninitialized: false,
  })
);

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Customer
app.post('/register', validateNewCustomerBody, registerUser);
app.post('/login', validateLoginBody, logIn);
app.get('/dashboard', getCustomerDashboard);

// Account
app.post('/api/accounts/:accountNumber/currentBalance', processTransaction);

app.listen(PORT, () => {
  console.log(`server listening on http://localhost:${PORT}`);
});
