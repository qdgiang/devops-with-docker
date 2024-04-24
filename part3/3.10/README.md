The project chosen for this exercise is the example Spring project. Source link: 
I optimise the Dockerfile from exercise 1.11 to reduce the image size from 435MB to 225MB

output:
```
❯ docker images
REPOSITORY        TAG       IMAGE ID       CREATED          SIZE
big-spring        latest    230d70713509   19 seconds ago   435MB
thin-spring       latest    51c1757ea134   4 minutes ago    225MB
multi-backend     latest    e82ddb533f72   3 hours ago      18.7MB
multi-frontend    latest    a358ddcc2d25   3 hours ago      129MB
alpine-frontend   latest    7acbd4a59e21   3 hours ago      471MB
alpine-backend    latest    d0c98cd6f180   3 hours ago      466MB
slim-backend      latest    51afe639e8ce   4 hours ago      1.07GB
slim-frontend     latest    a135305ac4c6   4 hours ago      1.26GB
og-backend        latest    bc37c5bd4bc4   4 hours ago      1.07GB
og-frontend       latest    44a8fd9251fa   4 hours ago      1.27GB
```

Optimisation performed:
- Multi-stage building
- Alpine image
- Non-root user