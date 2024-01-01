// no need to synchronize
// Messaging Passing

// Flutter 4 Runners
// 1.UI Runner => Root Thread
// 2.Platform Runner => Android/IOS Main Thread
// 3.Raster Task Runer => Flutter UI/Annimation
// 4.IO Runner => Database/ File/ API Call

//UI Runner => Platform Runner> Raster Task Runer(GPU Runner)> IO Runner> Own Runner(many calculation, list, Online Json, string in Database, many time need)

// In a Synchronous call, the code runs in single thread. 
// Asynchronous: In a Asynchronous call, the thread will not wait until it completes its tasks 
// before proceeding to next. ... In a Asynchronous call, the code runs in multiple threads 
// which helps to do many tasks as background jobs

