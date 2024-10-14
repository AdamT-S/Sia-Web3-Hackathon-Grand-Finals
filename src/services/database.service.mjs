import mysql from 'mysql2/promise';

export default class DatabaseService {
	conn;

	constructor(conn) {
		this.conn = conn;
	}

	/* Establish database connection and return the instance */
	static async connect() {
		const conn = await mysql.createConnection({
			host: process.env.DATABASE_HOST || 'localhost',
			user: 'user',
			password: 'password',
			database: 'envirewards',
		});
		console.log("connect() executed sucessfully");
		return new DatabaseService(conn);
	}

	/* Get a single continent */
	async Login(email, password) {
		try {
			const sql = `
        SELECT *
		FROM userinfo
		WHERE email = "${email}" AND user_pass = "${password}"
		`;
			const [rows, fields] = await this.conn.execute(sql);
			const row = rows[0];
			// console.log(gotContinent);
			console.log("Login() executed sucessfully");
			return gotContinent;
		} catch (err) {
			console.error('email or password is wrong:', err);
			return [];
		}
	}

}
