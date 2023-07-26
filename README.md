# andrewng_course 
## gradient descent from scratch in swift
## more to come later...

andrew ng course

Coding with friends


I am doing it in `Swift`

Aaron is doing it in `Go`:
github.com/aclander/gradient-descent

### Current Results

2 sig figs:
```f(x) = 1.1689795552387916x + 3.1275852087358076```

![Screen Shot 2023-07-25 at 11 00 23 PM](https://github.com/hunter-graves/andrewng_course/assets/8101155/65a3f93f-ade4-4344-99bc-b4b7c6692e50)

expected output:

![expected](https://github.com/hunter-graves/andrewng_course/assets/8101155/c53087d4-5e5e-43ad-a73d-beeaef98c571)

<img width="287" alt="Screen Shot 2023-07-25 at 11 03 12 PM" src="https://github.com/hunter-graves/andrewng_course/assets/8101155/b6058bdc-2999-4c74-a7b2-58c4256c184b">


### Conclusion
close enough for now, using 2 sig fig

### Notes + Math

#### w takes the form
<img width="707" alt="Screen Shot 2023-07-25 at 11 26 47 PM" src="https://github.com/hunter-graves/andrewng_course/assets/8101155/02c45414-44bb-4093-9f97-23593e5b5853">

##### b takes the same form except it's `d/db`

#### y hat = (wx + b) so we can substitute and use chain rule
<img width="715" alt="Screen Shot 2023-07-25 at 11 26 59 PM" src="https://github.com/hunter-graves/andrewng_course/assets/8101155/a5d22dc0-7749-4d34-9826-3e6d823e6c84">

#### apply chain rule
##### reduce w and b which both take the following forms  
<img width="722" alt="Screen Shot 2023-07-25 at 11 26 21 PM" src="https://github.com/hunter-graves/andrewng_course/assets/8101155/60e36fe0-2105-45f7-b08c-d478467b9801">







