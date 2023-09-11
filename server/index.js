
const express=require('express');
const mongoose=require("mongoose");

//Import from other file
const authRouter=require("./routes/auth");
const e = require('express');
require('dotenv').config()

//INIT
const PORT=3000;
const app=express();
const DB=process.env.MONGODB_URL

//middleware
app.use(authRouter);

//Conection
mongoose.connect(DB).then(()=>{
    console.log("Connection Successful")
}).catch(e=>{
    console.log(e);
})


//creating API

app.listen(PORT,"0.0.0.0", function (){
    console.log(`connected at port ${PORT}`)
} )
