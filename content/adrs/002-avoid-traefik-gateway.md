# 2. Avoid Traefik as API Gateway

Date: 2026-01-04

## Status

Accepted

## Context

Traefik was evaluated as a potential API Gateway. However, its plugin system (based on Yaegi) presents challenges:

1.  **Unsafe Package Support**: It does not support `unsafe` operations by default, even for trusted packages (e.g., from Google). There is a workaround through configuring the plugin itself and configuring Traefik to allow unsafe packages. The resistance not allowing unsafe even from google published packages seems to be to much friction. Traefik claims it is intentional for security reasons. I do agree with this claim but I think as long as the packages are trusted and from a reputable source it should be allowed.
2.  **Library Incompatibility**: Panics occur when using standard and widely used libraries such as [testify](https://github.com/stretchr/testify). The cause of the panics is unknown and eliminating the use of tesify solved the problem.
3.  **Firebase Issues**: Panics also occur with the official Firebase Go language library. 
4. **Vendor**: It requires a vendor directory to be present in the project root. This is not a deal breaker but it is a bit of a pain.
5. **Developer Throughput**: Resolving these compatibility issues is time consuming. I suspect it works well when not depending on open source libraries and use core Go Language features.
6. **Future Limitations**: I fear it will limit what is capable or make tasks take longer than they should.

Proof of concept:

These findings were discovered while writing a [authentication middleware](https://github.com/RootServices/traefik-auth).

## Decision

We will not use Traefik as the API Gateway and Envoy will be reviewed as a potential alternative.

This is disappointing as Traefik is a solid choice and I was excited to try it out. However, the issues mentioned above require looking into other projects.

## Consequences

-   **Positive**: Developers will not need to debug obscure Traefik/Yaegi plugin issues.
-   **Negative**: We lose the out-of-the-box features provided by Traefik and will need to select an alternative solution or implement necessary gateway features (routing, middleware, etc.) using standard Go or another proxy.

