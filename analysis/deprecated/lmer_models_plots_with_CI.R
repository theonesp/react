#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
lvef_unadjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), lvef_unadjusted_model))


codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

lvef_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Ejection fraction (%)')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
lvef_unadjusted_model_effect <- as.data.frame(effect(c("time","sex"), lvef_unadjusted_model))


codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

lvef_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Ejection fraction (%)')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 

#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
lvef_adjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), lvef_adjusted_model))

codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

lvef_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Ejection fraction (%)')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
lvef_adjusted_model_effect <- as.data.frame(effect(c("time","sex"), lvef_adjusted_model))

codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

lvef_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Ejection fraction (%)')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 


#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
six_minute_walking_unadjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), six_minute_walking_unadjusted_model))

codes_exam <- list ('1'='1st month visit','6'='6th month visit')

six_minute_walking_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Distance covered (ft)')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
six_minute_walking_unadjusted_model_effect <- as.data.frame(effect(c("time","sex"), six_minute_walking_unadjusted_model))

codes_exam <- list ('1'='1st month visit','6'='6th month visit')

six_minute_walking_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Distance covered (ft)')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 

#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
six_minute_walking_adjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), six_minute_walking_adjusted_model))

codes_exam <- list ('1'='1st month visit','6'='6th month visit')

six_minute_walking_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Distance covered (ft)')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
six_minute_walking_adjusted_model_effect <- as.data.frame(effect(c("time","sex"), six_minute_walking_adjusted_model))

codes_exam <- list ('1'='1st month visit','6'='6th month visit')

six_minute_walking_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('Distance covered (ft)')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 

#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
new_york_heart_association_unadjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), new_york_heart_association_unadjusted_model))


codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

new_york_heart_association_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('NYHA progression')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
new_york_heart_association_unadjusted_model_effect <- as.data.frame(effect(c("time","sex"), new_york_heart_association_unadjusted_model))


codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

new_york_heart_association_unadjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('NYHA progression')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 

#### Plot stratified by etiology_of_heart_failure

Non-linear exams stratified by etiology_of_heart_failure

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
new_york_heart_association_adjusted_model_effect <- as.data.frame(effect(c("time","etiology_of_heart_failure"), new_york_heart_association_adjusted_model))

codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

new_york_heart_association_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  
  ggplot(aes(x=time,y=fit,colour=etiology_of_heart_failure,fill=etiology_of_heart_failure))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('NYHA progression')+
  scale_color_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  scale_fill_manual(labels = c("No", "Yes"), values = c("#1abc9c","#f1c40f"))+
  labs(colour='Etiology of HF', fill='Etiology of HF') +
  theme_minimal()
``` 

#### Plot stratified by sex

Non-linear exams stratified by sex

```{r fig.height=4.5, fig.width=8, message=FALSE, warning=FALSE}
new_york_heart_association_adjusted_model_effect <- as.data.frame(effect(c("time","sex"), new_york_heart_association_adjusted_model))

codes_exam <- list ('0'='Baseline','1'='1st month after CRT','6'='6th month after CRT')

new_york_heart_association_adjusted_model_effect %>% mutate(
  time = recode_factor(time, !!!codes_exam)
)%>%
  
  ggplot(aes(x=time,y=fit,colour=sex,fill=sex))+
  geom_point() +
  geom_errorbar(aes(ymin=lower,ymax=upper), width=0.1,alpha=1)+
  xlab('Visits')+
  ylab('NYHA progression')+
  scale_color_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  scale_fill_manual(labels = c("Male", "Female"), values = c("#1e88e5","#5e35b1"))+
  labs(colour='Sex', fill='Sex') +
  theme_minimal()
``` 