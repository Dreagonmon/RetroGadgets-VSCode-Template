---@meta _

---@class Wifi:Module
---@field AccessDenied boolean Will return `true` if network access is denied. READ ONLY.
---@field WebGet fun(self:Wifi, url:string):number Send a web HTTP GET request, return a numeric handle to identify the request.
---@field WebPutData fun(self:Wifi, url:string, data:string):number Send a web HTTP PUT request, return a numeric handle to identify the request.
---@field WebPostData fun(self:Wifi, url:string, data:string):number Send a web HTTP POST request, return a numeric handle to identify the request.
---@field WebPostForm fun(self:Wifi, url:string, data:table<string, string>):number Send a web HTTP POST request, return a numeric handle to identify the request.
---@field WebCustomRequest fun(self:Wifi, url:string, method:string, customHeaderFields:table<string, string>, contentType:string, contentData:string):number Send a web request, return a numeric handle to identify the request.
---@field WebAbort fun(self:Wifi, handle:number):boolean Abort a web request
---@field GetWebUploadProgress fun(self:Wifi, handle:number):number Returns a percentage (0-100) representing the progress of the current upload associated with the given handle.
---@field GetWebDownloadProgress fun(self:Wifi, handle:number):number Returns a percentage (0-100) representing the progress of the current download associated with the given handle.
---@field ClearCookieCache fun(self:Wifi) Clear stored cookies.
---@field ClearUrlCookieCache fun(self:Wifi, url:string) Only cookies that apply to this `url` will be removed from the cache.

---Sent when a web request is completed by the remote server.
---@class WifiWebResponseEvent
---@field RequestHandle number is the handle of the request, which matches the number returned by the function that initiated it.
---@field ResponseCode number is the HTTP code returned by the server.
---@field IsError boolean is a boolean value which indicates if the response wasn't successful.
---@field ErrorType string error type.
---@field ErrorMessage string error message.
---@field ContentType string is the MIME type of the content the server returned.
---@field Text string is the content of the response.
---@field Type "WifiWebResponseEvent" is "WifiWebResponseEvent"
