<style>
@charset "ISO-8859-1";
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

:root{
    --green:#16a085;
    --black:#444;
    --light-color:#777;
    --box-shadow:.5rem .5rem 0 rgba(22, 160, 133, .2);
    --text-shadow:.4rem .4rem 0 rgba(0, 0, 0, .2);
    --border:.2rem solid var(--green);
}


#home{

height: 570px;

}
*{
    font-family: 'Poppins', sans-serif;
    margin:0; padding: 0;
    box-sizing: border-box;
    outline: none; border: none;
    text-transform: capitalize;
    transition: all .2s ease-out;
    text-decoration: none;
}

html{
    font-size: 62.5%;
    overflow-x: hidden;
    scroll-padding-top: 7rem;
    scroll-behavior: smooth;
}

section{
    padding:2rem 9%;
}
 .heading{
    color: blueviolet;
 }
section:nth-child(even){
    background: #f5f5f5;
}

.heading{
    text-align: center;
    padding-bottom: 2rem;
    text-shadow: var(--text-shadow);
    text-transform: uppercase;
    color:var(--black);
    font-size: 5rem;
    letter-spacing: .4rem;
}

.heading span{
    text-transform: uppercase;
    color:var(--green);
}

.btn{
    display: inline-block;
    margin-top: 1rem;
    padding: .5rem;
    padding-left: 1rem;
    border:var(--border);
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    color:var(--green);
    cursor: pointer;
    font-size: 1.7rem;
    background: #fff;
}

.btn span{
    padding:.7rem 1rem;
    border-radius: .5rem;
    background: var(--green);
    color:#fff;
    margin-left: .5rem;
}

.btn:hover{
    background: var(--green);
    color:#fff;
}

.btn:hover span{
    color: var(--green);
    background:#fff;
    margin-left: 1rem;
}

#menu-btn{
    font-size: 2.5rem;
    border-radius: .5rem;
    background: #eee;
    color:var(--green);
    padding: 1rem 1.5rem;
    cursor: pointer;
    display: none;
}

.home{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap:1.5rem;
    padding-top: 10rem;
    background: #31e9f6;
}

.home .image{
    flex:1 1 45rem;
}

.home .image img{
    width: 100%;
}

.home .content{
    flex:1 1 45rem;
    
}

.home .content h3{
    font-size: 4.5rem;
    color:var(--black);
    line-height: 1.8;
    text-shadow: var(--text-shadow);
}

.home .content p{
    font-size: 1.7rem;
    
    line-height: 1.8;
    padding: 1rem 0;
    color: rgb(0, 0, 0);
}
#icon{
    background-color:#7df2b4;
}
.icons-container{
    display: grid;
    gap:2rem;
    grid-template-columns: repeat(auto-fit, minmax(20rem, 1fr));
    padding-top: 5rem;
    padding-bottom: 5rem;
    
}

.icons-container .icons{
    border:rgb(230, 222, 225);
    box-shadow: var(--box-shadow);
    border-radius: .5rem;
    text-align: center;
    padding: 2.5rem;
     background:rgb(230, 222, 225);
}

.icons-container .icons i{
    font-size: 4.5rem;
    color:var(--green);
    padding-bottom: .7rem;
}

.icons-container .icons h3{
    font-size: 4.5rem;
    color:var(--black);
    padding: .5rem 0;
    text-shadow: var(--text-shadow);
}

.icons-container .icons p{
    font-size: 1.7rem;
    color:var(--light-color);
}
#services{
    background-color: #46e6f1;
}
.services .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(27rem, 1fr));
    gap:2rem;
}

.services .box-container .box{
    background:rgb(230, 222, 225);
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    border:var(--border);
    padding: 2.5rem;
    border-color:rgb(230, 222, 225);;
}

.services .box-container .box i{
    color: var(--green);
    
    font-size: 5rem;
    padding-bottom: .5rem;
}

.services .box-container .box h3{
    color: var(--black);
    font-size: 2.5rem;
    padding:1rem 0;
}

.services .box-container .box p{
    color: var(--light-color);
    font-size: 1.4rem;
    line-height: 2;
}
#doctors{
    background:#33f2dd;
}
.doctors .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:2rem;
}

.doctors .box-container .box{
    text-align: center;
    
    border-radius: .5rem;
    border:rgb(230, 222, 225);;
    box-shadow: var(--box-shadow);
    padding:2rem;
    background:rgb(230, 222, 225);
}

.doctors .box-container .box img{
    height: 20rem;
    border:var(--border);
    border-radius: .5rem;
    margin-top: 1rem;
    margin-bottom: 1rem;
}

.doctors .box-container .box h3{
    color:var(--black);
    font-size: 2.5rem;
}

.doctors .box-container .box span{
    color:var(--green);
    font-size: 1.5rem;
}

.doctors .box-container .box .share{
    padding-top: 2rem;
}

.doctors .box-container .box .share a{
    height: 5rem;
    width: 5rem;
    line-height: 4.5rem;
    font-size: 2rem;
    color:var(--green);
    border-radius: .5rem;
    border:var(--border);
    margin:.3rem;
}

.doctors .box-container .box .share a:hover{
    background:var(--green);
    color:#fff;
    box-shadow: var(--box-shadow);
}

.book .row{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap:2rem;
}
 
.book .row .image{
    flex:1 1 45rem;
}

.book .row .image img{
    width: 100%;
}

.book .row form{
    flex:1 1 45rem;
    background: #fff;
    border:var(--border);
    box-shadow: var(--box-shadow);
    text-align: center;
    padding: 2rem;
    border-radius: .5rem;
}

.book .row form h3{
    color:var(--black);
    padding-bottom: 1rem;
    font-size: 3rem;
}

.book .row form .box{
    width: 100%;
    margin:.7rem 0;
    border-radius: .5rem;
    border:var(--border);
    font-size: 1.6rem;
    color: var(--black);
    text-transform: none;
    padding: 1rem;
}

.book .row form .btn{
    padding:1rem 4rem;
}
#review{
    background-color:#f377d8;
}
.review .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(27rem, 1fr));
    gap:2rem;
}

.review .box-container .box{
    border:var(--border);
    box-shadow: var(--box-shadow);
    border-radius: .5rem;
    padding:2.5rem;
    background: #fff;
    text-align: center;
    position: relative;
    overflow: hidden;
    z-index: 0;
}

.review .box-container .box img{
    height: 10rem;
    width: 10rem;
    border-radius: 50%;
    object-fit: cover;
    border:.5rem solid #fff;
}

.review .box-container .box h3{
    color:#fff;
    font-size: 2.2rem;
    padding:.5rem 0;
    
}

.review .box-container .box .stars i{
    color:#fff;
    font-size: 1.5rem;
}

.review .box-container .box .text{
    color:var(--light-color);
    line-height: 1.8;
    font-size: 1.6rem;
    padding-top: 4rem;
}

.review .box-container .box::before{
    content: '';
    position: absolute;
    top:-4rem; left: 50%;
    transform:translateX(-50%);
    background:var(--green);
    border-bottom-left-radius: 50%;
    border-bottom-right-radius: 50%;
    height: 25rem;
    width: 120%;
    z-index: -1;
}

.blogs .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:2rem;
}

.blogs .box-container .box{
    border:var(--border);
    box-shadow: var(--box-shadow);
    border-radius: .5rem;
    padding: 2rem;
    background:rgb(230, 222, 225);
     border-color:rgb(230, 222, 225);
}
#blogs{
background: #576af9;
}

.blogs .box-container .box .image{
    height: 20rem;
    overflow:hidden;
    border-radius: .5rem;
}

.blogs .box-container .box .image img{
    height: 100%;
    width: 100%;
    object-fit: cover;
}

.blogs .box-container .box:hover .image img{
    transform:scale(1.2);
}

.blogs .box-container .box .content{
    padding-top: 1rem;
}

.blogs .box-container .box .content .icon{
    padding: 1rem 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.blogs .box-container .box .content .icon a{
    font-size: 1.4rem;
    color: var(--light-color);
}

.blogs .box-container .box .content .icon a:hover{
    color:var(--green);
}

.blogs .box-container .box .content .icon a i{
    padding-right: .5rem;
    color: var(--green);
}

.blogs .box-container .box .content h3{
    color:var(--black);
    font-size: 3rem;
    text-align: center;
}

.blogs .box-container .box .content p{
    color:var(--light-color);
    font-size: 1.5rem;
    line-height: 1.8;
    padding:1rem 0;
}



#footer2{
    background: rgb(30,9,219);
    background: linear-gradient(0deg, rgba(30,9,219,1) 0%, rgba(45,210,253,1) 100%);
}
.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(22rem, 1fr));
    gap:2rem;
    
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    color:#d914ba;
    padding: 1rem 0;
}

.footer .box-container .box a{
    display: block;
    font-size: 1.5rem;
    color: #eee;;
    padding: 1rem 0;
}

.footer .box-container .box a i{
    padding-right: .5rem;
    color: #eee;
    width: 25px;
    height: 25px;
}

.footer .box-container .box a:hover i{
    padding-right:2rem;
    
    
}

.footer .credit{
    padding: 1rem;
    padding-top: 2rem;
    margin-top: 2rem;
    text-align: center;
    font-size: 2rem;
    color:var(--light-color);
    border-top: .1rem solid rgba(0, 0, 0, .1);
}

.footer .credit span{
    color:var(--green);
}










</style>