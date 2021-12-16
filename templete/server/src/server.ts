import express, { Application, Request, Response } from "express";

const app: Application = express();
const port = 3001;

// Body parsing Middleware
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get(
	"/",
	async (req: Request, res: Response): Promise<Response> => {
		return res.status(200).send({
			message: "Hello World!",
		});
	}
);

try {
	app.listen(port, (): void => {
		console.log(`Server started at http://localhost:${ port }`);
	});
} catch (error: any) {
	console.error(`Error occurred: ${error.message}`);
}
