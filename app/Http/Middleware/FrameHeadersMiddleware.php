<?php

namespace App\Http\Middleware;

use Closure;

class FrameHeadersMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      $response = $next($request);
      $response->header('X-Frame-Options', 'ALLOW FROM https://analytics.google.com/analytics/web/#embed/report-home/a108478224w162045799p163094605/');
      return $response;
    }
}
