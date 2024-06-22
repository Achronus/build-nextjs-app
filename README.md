# Build NextJS App

A simple tool for creating fresh [Next.js](https://nextjs.org/) applications using a Docker container with [Bun](https://bun.sh/). The image is updated every two weeks to maintain the latest package versions.

Found on:

- [PyPi](https://pypi.org/project/build_nextjs_app/)
- [Docker Hub](https://hub.docker.com/r/achronus/nextjs_app)
- [GitHub](https://github.com/Achronus/build-nextjs-app/)

It consists of the following packages, libraries and frameworks:

- [Shadcn/ui](https://ui.shadcn.com/)
- [Uploadthing](https://uploadthing.com/)
- [dotenv](https://www.npmjs.com/package/dotenv)
- [dotenv-expand](https://www.npmjs.com/package/dotenv-expand)
- [Lucide React Icons](https://lucide.dev/)
- [Clerk](https://clerk.com/)
- [Stripe](https://docs.stripe.com/stripe-js/react?locale=en-GB)
- [Tailwind CSS](https://tailwindcss.com/)

## Why This Tool?

Looking to spend less time messing with configuration settings? Eager to jump straight into coding! Well you've come to the right place!

This tool builds a set of frontend files quickly with a single command, while maintaining the following key aspects:

1. Compatibility across devices
2. File isolation with easy copying
3. Maximising package build speed using [bun](https://bun.sh/) without issues on `Windows` (`npm` is slow!)
4. Automatic package updates to their latest version often

To achieve this, we use Docker with GitHub actions.

## How To Use It

1. Firstly, [install Docker](https://docs.docker.com/get-docker/)

2. Next, install the package through pip using:

   ```python
   pip install build_nextjs_app
   ```

3. Run it with your desired `project_name`

   ```python
   build-nextjs-app <project_name>
   ```

And that's it! Open the project folder and you'll see all the assets.

## In Need of an Env File?

Because of the way we use this tool (see the next section), we haven't added an `.env` file. However, we understand their importance and encourage you to use this as a template:

```python
# Uploadthing: storing files and handling file uploading
# https://uploadthing.com/
UPLOADTHING_SECRET=
NEXT_PUBLIC_UPLOADTHING_APP_ID=

# Clerk: User Authentication
# https://clerk.com/docs/quickstarts/nextjs
NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY=
CLERK_SECRET_KEY=

NEXT_PUBLIC_CLERK_SIGN_IN_URL=/auth/sign-in
NEXT_PUBLIC_CLERK_SIGN_UP_URL=/auth/sign-up
NEXT_PUBLIC_CLERK_AFTER_SIGN_IN_URL=/
NEXT_PUBLIC_CLERK_AFTER_SIGN_UP_URL=/

# Stripe: user payments
# https://stripe.com/docs
NEXT_PUBLIC_STRIPE_PUBLISHABLE_KEY=
STRIPE_SECRET_KEY=
STRIPE_WEBHOOK_SECRET=
NEXT_PUBLIC_STRIPE_CLIENT_ID=
NEXT_PUBLIC_PLATFORM_SUBSCRIPTION_PERCENT=1
NEXT_PUBLIC_PLATFORM_ONETIME_FEE=2
NEXT_PUBLIC_PLATFORM_PERCENT=1
NEXT_PRODUCT_ID=
```

Also, we've added the `dotenv` packages to provide accessibility to `.env` files outside of the existing directory, such as projects for our own use case.

## Need a Backend Too?

We personally use this in our [create-api-app](https://github.com/Achronus/create-api-app) tool for building applications with a FastAPI backend and NextJS frontend.

If you are looking for a FastAPI backend as well, consider trying the tool out!
