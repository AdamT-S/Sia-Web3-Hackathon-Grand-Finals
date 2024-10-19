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

	/* User Login */
	async Login(email, password) {
        try {
            const sql = `
                SELECT *
                FROM userinfo
                WHERE email = ? AND user_pass = ?
            `;
            const [rows] = await this.conn.execute(sql, [email, password]);
            console.log("login() executed successfully");
            return rows.length > 0;
        } catch (err) {
            console.error('email or password is wrong:', err);
            return false;
        }
    }

	async Get_tokens(email){
		try{
			const sql = `
			SELECT Tokens
			FROM userinfo
			WHERE email = '${email}';
			`
		}
		catch (err) {
			console.error('cannot add tokens:', err);
			return [];
	}
}
	async Add_tokens(email, more_tokens){
		try{
			const sql = `
			UPDATE userinfo 
			SET tokens = tokens + ${more_tokens}
			WHERE email = "${email}"; 
			`
		}
		catch (err) {
			console.error('cannot add tokens:', err);
			return [];
	}
}
	async rm_tokens(email, less_tokens){
		try{
			const sql = `
			UPDATE userinfo 
			SET tokens = tokens - ${less_tokens}
			WHERE email = "${email}"; 
			`
		}
		catch (err) {
			console.error('cannot remove tokens:', err);
			return [];
		}
	}

	async add_User(email, password){
		try{
			const sql = `
			INSERT INTO userinfo (email, user_pass, tokens, user_type)
			VALUES ("${email}", "${password}", 0, "endUser")
			`
		}
		catch (err) {
			console.error('cannot add user:', err);
			return [];
		}
	}

	async add_Admin(email, password){
		try{
			const sql = `
			INSERT INTO userinfo (email, user_pass, tokens, user_type)
			VALUES ("${email}", "${password}", 0, "Admin")
			`
		}
		catch (err) {
			console.error('cannot add Admin:', err);
			return [];
		}
	}

	async del_User(email){
		try{
			const sql = `
			DELETE
			FROM userinfo
			WHERE email = "${email}"
			`
		}
		catch (err) {
			console.error('cannot remove user:', err);
			return [];
		}
	}

	async Get_shop(ShopID){
		try{
			const sql = `
			SELECT * 
			FROM store_info 
			WHERE Store_ID = '${ShopID}';
			`
		}
		catch (err) {
			console.error('cannot add tokens:', err);
			return [];
	}
}

async add_Shop(ShopID, Shop_name, voucherID, store_image, store_type){
	try{
		const sql = `
		INSERT INTO store_info (Store_ID, Store_Name, Voucher_ID, store_image, Store_Type)
VALUES ("${ShopID}", "${Shop_name}", "${voucherID}", "${store_image}", "${store_type}" )
		`
	}
	catch (err) {
		console.error('cannot add user:', err);
		return [];
	}
}

}

