# NYTimesWrapper

NYTimes Objective-C API Wrapper

## Classes (currently)

* [NYTimesArticle][] - API support for NYTimes Articles.

## Example

To use NYTimesWrapper.

  NYTimesWrapper *nytimes = [[NYTimesWrapper alloc] initWithKey:@"YOUR-API-KEY"];
  nytimes.query = "TimesOpen HackDay";
  
  [NYTimesArticle asyncRequest:nytimes 
                        success:^(NSData *data, NSURLResponse *resposne){
                            NSLog(@"callback %@", data);
                        } failure:^(NSData *data, NSError *error){
                            NSLog(@"callback");
                        } tag:@"tag"];
    

## References
http://vinceyuan.blogspot.com/2011/04/wwdc2010-session206-introducing-blocks_07.html http://vinceyuan.blogspot.com/2011/04/wwdc2010-session211-simplifying-iphone.html http://blog.logichigh.com/2010/09/12/cocoa-blocks/ http://cocoasamurai.blogspot.com/2009/09/guide-to-blocks-grand-central-dispatch.html http://www.fieryrobot.com/blog/2010/06/27/a-simple-job-queue-with-grand-central-dispatch/ http://blog.slaunchaman.com/2011/02/28/cocoa-touch-tutorial-using-grand-central-dispatch-for-asynchronous-table-view-cells/ https://github.com/SlaunchaMan/GCDExample

## TODOD
plenty.