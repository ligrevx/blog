import { serve } from "https://deno.land/std@0.92.0/http/server.ts";

const s = serve({port:8000});

console.log('listening on port 8000');

for await (const r of s) {
  console.log(r);
  r.respond({ body: 'hello world' });
}
