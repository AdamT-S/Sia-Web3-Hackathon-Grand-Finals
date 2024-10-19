/* Import dependencies */
import express from 'express';
import session from 'express-session';
import { } from 'module';
import path, { dirname } from 'path';
import { fileURLToPath } from 'url';
import DatabaseService from './services/database.service.mjs';

/* Create express instance */
const app = express();
const port = 3000;

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

/* Add form data middleware */
app.use(express.urlencoded({extended: true}));

app.get('*.js', function (req, res) {
	res.type('application/javascript');
	res.sendFile('/services/actions.js', {root: __dirname});
	// console.log(`req.url: ${req.url}`);
	// console.log(`__dirname: ${__dirname}`);
});

// Integrate Pug with Express
app.set('view engine', 'pug');
app.set('views', path.join(__dirname, './views'));
/* Add form data middleware */
app.use(express.urlencoded({extended: true}));

app.use(
	session({
		secret: 'verysecretkey',
		resave: false,
		saveUninitialized: true,
		cookie: {secure: false},
	}),
);

// Integrate Pug with Express
app.set('view engine', 'pug');

// Serve assets from 'static' folder
app.use(express.static('static'));

const db = await DatabaseService.connect();
const {conn} = db;

// Landing route
app.get('/', (req, res) => {
	res.render('login');
});

// Landing route
app.get('/admin?delete:name', (req, res) => {
	console.log(reg.params.name);

	deleteIt(reg.params.name);
});

// Login route
app.get('/index', (req, res) => {
	res.render('index');
});

// Login route
app.get('/login', (req, res) => {
	res.render('login');
});


// Run server!
app.listen(port, () => {
	console.log(`Server running on port ${port}`);
});


app.use(express.json());

app.post('/login', async (req, res) => {
    const { email, password } = req.body;
    const dbService = await DatabaseService.connect();
    const isLoggedIn = await dbService.Login(email, password);

    if (isLoggedIn) {
        res.json({ success: true });
    } else {
        res.json({ success: false });
    }
});

app.get('/api/tokens', async (req, res) => {
    try {
        const email = req.query.email;  // Assuming the email is passed as a query parameter
        const db = await DatabaseService.connect();
        const tokens = await DatabaseService.Get_tokens(email);
        res.json({ tokens: tokens });
    } catch (err) {
        console.error('Error fetching tokens:', err);
        res.status(500).json({ error: 'Unable to fetch token balance' });
    }
});

