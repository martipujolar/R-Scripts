
1) Script to do a PCA plot in R.

pop= c( "3. Varna", "3. Varna",  "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "3. Varna", "4. Villefranche", "4. Villefranche",  "4. Villefranche", "4. Villefranche", "4. Villefranche",  "2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","2. Woods Hole","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","5. Sylt","1. Miami", "1. Miami", "1. Miami", "1. Miami", "1. Miami", "1. Miami" )
coordinate_1=c(-0.18,-0.16,-0.13,-0.16,-0.14,-0.16,-0.15,-0.13,-0.16,-0.14,-0.12,-0.13,-0.16,-0.14,-0.16,-0.17,-0.17,0.15,0.14,0.14,0.13,0.13,0.13,0.10,0.13,0.14,0.12,0.13,0.17,0.18,0.17,0.13,0.17,0.12,0.19,0.14,0.16,0.17,0.17,0.17,-0.14,-0.1,-0.15,-0.12,-0.14,-0.12)
coordinate_2=c(-0.13, -0.1,-0.19,0,-0.13,-0.13,-0.02,-0.01,-0.06,-0.03,-0.07,-0.09,-0.22,-0.13,-0.2,-0.07,-0.12,-0.01,0.05,-0.03,-0.04,-0.03,0.05,-0.27,-0.11,-0.06,-0.05,-0.04,-0.04,0.06,-0.02,0.16,0.04,0.01,-0.11,0.14,0.01,-0.02,0,0.04,0.31,0.22,0.4,0.3,0.31,0.32)
DATA=data.frame(pop,coordinate_1,coordinate_2)
ggplot(DATA,aes(x=coordinate_1,y=coordinate_2, col=pop, shape=pop))+geom_point(size=10, alpha=0.5,show.legend=FALSE)+scale_x_continuous(limits=c(-.2,.2))+scale_y_continuous(limits=c(-.35,.45),expand=c(0,0))+scale_color_manual(values=c("red","blue","green","darkorange","darkviolet"))+scale_shape_manual(values=c(16,15,16,16,15))+theme(panel.border = element_rect(colour = "black", fill=NA, size=1), panel.background = element_blank(), panel.grid.major = element_line(colour="black", size=0.1),panel.grid.minor = element_blank(),axis.text=element_text(size=24,colour="black"),axis.title=element_text(size=24,colour="black"))+xlab("PC1 (16.2%)")+ylab("PC2 (2.3%)") 

2) Script to do a Structure plot in R

data=c(0,1,0,1,0,1,0,1,0,1,0,1,1,0,1,0,1,0,.91,.09,1,0,.93,.07,1,0,1,0,1,0,1,0,1,0,1,0,    1,0,1,0,1,0,1,0,1,0,1,0,.85,.15,1,0,1,0,.99,.01,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1)
SNP2=matrix(data,ncol=46)
rownames(SNP2)=c("K1","K2")
colnames(SNP2)=c("MI1","MI2","MI3", "MI4", "MI5", "MI6","WH1","WH2","WH3","WH4","WH5","WH6","WH7","WH8","WH9","WH10","WH11","WH12","SY1","SY2","SY3", "SY4", "SY5", "SY6","SY7","SY8","SY9","SY10","SY11", "VF1","VF2","VF3","VF4","VF5","VA1","VA2","VA3","VA4","VA5","VA6","VA7","VA8","VA9","VA10","VA11","VA12")
barplot (SNP2, space=c(0,0,0,0,0,0,0.3,0,0,0,0,0,0,0,0,0,0,0,0.3,0,0,0,0,0,0,0,0,0,0,0.3,0,0,0,0 ,0.3,  0,0,0,0,0,0,0,0,0,0,0), las=2, col=c("lightskyblue2","grey40"),cex.names=.7,)
