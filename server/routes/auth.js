const express=require("express");
 
const authRouter=express.Router();

authRouter.post('/api/signup',(req,res)=>{
    //get the data from client 
    const{name,emai,password}=req.body;
});

module.exports=authRouter;