import processing.sound.*;

SoundFile[] sentence1= new SoundFile[2];
SoundFile[] people1= new SoundFile[6];
SoundFile[] tasks1= new SoundFile[8];
SoundFile[] sentence2= new SoundFile[3];
SoundFile[] people2= new SoundFile[9];
SoundFile[] sentence3= new SoundFile[2];
SoundFile[] tasks2= new SoundFile[8];
SoundFile[] consequences= new SoundFile[7];

float[] sentence1_lengths= new float[2];
float[] people1_lengths= new float[6];
float[] tasks1_lengths= new float[8];
float[] sentence2_lengths= new float[3];
float[] people2_lengths= new float[9];
float[] sentence3_lengths= new float[2];
float[] tasks2_lengths= new float[8];
float[] consequences_lengths= new float[7];

String[] sentence1_title= new String[2];
String[] people1_title= new String[6];
String[] tasks1_title= new String[8];
String[] sentence2_title= new String[3];
String[] people2_title= new String[9];
String[] sentence3_title= new String[2];
String[] tasks2_title= new String[8];
String[] consequences_title= new String[7];

int s_count=1; //SENTENCES S1,2,3 [0,1,2]
int count = 0;
int count2 = 0;
int count3 = 0;


void setup(){
  size(600,600);
  
  //naming the files in the arrays
  for(int i=0; i<2; i++){
    sentence1_title[i] = "sentence1_"+i+".aif";
  }  for(int i=0; i<6; i++){
    people1_title[i] = "people1_"+i+".aif";
  }  for(int i=0; i<8; i++){
    tasks1_title[i] = "tasks1_"+i+".aif";
  }  for(int i=0; i<3; i++){
    sentence2_title[i] = "sentence2_"+i+".aif";
  }  for(int i=0; i<9; i++){
    people2_title[i] = "people2_"+i+".aif";
  }  for(int i=0; i<2; i++){
    sentence3_title[i] = "sentence3_"+i+".aif";
  }  for(int i=0; i<8; i++){
    tasks2_title[i] = "tasks2_"+i+".aif";
  }  for(int i=0; i<7; i++){
    consequences_title[i] = "consequences_"+i+".aif";
  }
  
 //filling the soundfile arrays
     for(int i=0; i<2; i++){
    sentence1[i] = new SoundFile(this, sentence1_title[i]);
  }  for(int i=0; i<6; i++){
    people1[i] = new SoundFile(this, people1_title[i]);
  }  for(int i=0; i<8; i++){
    tasks1[i] = new SoundFile(this, tasks1_title[i]);
  }  for(int i=0; i<3; i++){
    sentence2[i] = new SoundFile(this, sentence2_title[i]);
  }  for(int i=0; i<9; i++){
    people2[i] = new SoundFile(this, people2_title[i]);
  }  for(int i=0; i<2; i++){
    sentence3[i] = new SoundFile(this, sentence3_title[i]);
  }  for(int i=0; i<8; i++){
    tasks2[i] = new SoundFile(this, tasks2_title[i]);
  }  for(int i=0; i<7; i++){
    consequences[i] = new SoundFile(this, consequences_title[i]);
  }
  
  
  //filling length arrays
   for(int i=0; i<2; i++){
    sentence1_lengths[i] = sentence1[i].duration();;
  }  for(int i=0; i<6; i++){
    people1_lengths[i] = people1[i].duration();;
  }  for(int i=0; i<8; i++){
    tasks1_lengths[i] = tasks1[i].duration();;
  }  for(int i=0; i<3; i++){
    sentence2_lengths[i] = sentence2[i].duration();;
  }  for(int i=0; i<9; i++){
    people2_lengths[i] = people2[i].duration();;
  }  for(int i=0; i<2; i++){
    sentence3_lengths[i] = sentence3[i].duration();;
  }  for(int i=0; i<8; i++){
    tasks2_lengths[i] = tasks2[i].duration();;
  }  for(int i=0; i<7; i++){
    consequences_lengths[i] = consequences[i].duration();;
  }
  
 //all files initiated and ready
  for(int i=0; i<2; i++){
    sentence1[i].loop();
    sentence1[i].stop();
    sentence1[i].amp(0);
  }  for(int i=0; i<6; i++){
    people1[i].loop();
    people1[i].amp(0);
    people1[i].stop();
  }  for(int i=0; i<8; i++){
    tasks1[i].loop();
    tasks1[i].amp(0);
    tasks1[i].stop();
  }  for(int i=0; i<3; i++){
    sentence2[i].loop();
    sentence2[i].amp(0);
    sentence2[i].stop();
  }  for(int i=0; i<9; i++){
    people2[i].loop();
    people2[i].amp(0);
    people2[i].stop();
  }  for(int i=0; i<2; i++){
    sentence3[i].loop();
    sentence3[i].amp(0);
    sentence3[i].stop();
  }  for(int i=0; i<8; i++){
    tasks2[i].loop();
    tasks2[i].amp(0);
    tasks2[i].stop();
  }  for(int i=0; i<7; i++){
    consequences[i].loop();
    consequences[i].amp(0);
    consequences[i].stop();
  }
  
  
  
  
}//end setup





void draw(){    //"DELAY ONLY APPLIES AT THE END OF DRAW, THE SCREEN ONLY UPDATES WHEN THE END OF DRAW IS REACHED"
 
//----------------------------------------------------s1
 if(s_count == 1){
   count2=0;
   count3=0;
        int pchoose = int(random(0,5));
        int tchoose = int(random(0,7));
     if(count == 0){
    sentence1[0].amp(1);
    sentence1[0].play();
    sentence1[0].jump(0);
    delay(int(1000*sentence1_lengths[0]));
    count++;
      }
      else if (count == 1){
    sentence1[0].stop();
    delay(100);
    people1[pchoose].amp(1);
    people1[pchoose].play();
    people1[pchoose].jump(0);
    delay(int(1000*people1_lengths[pchoose]));
    count++;
      }
      else if (count == 2){
    people1[pchoose].stop();
    delay(100);
    sentence1[1].amp(1);
    sentence1[1].play();
    sentence1[1].jump(0);
    delay(int(1000*sentence1_lengths[1]));  
    count++;
      }
      else if (count == 3){
    sentence1[1].stop();
    delay(100);
    tasks1[tchoose].amp(1);
    tasks1[tchoose].play();
    tasks1[tchoose].jump(0);
    delay(int(1000*tasks1_lengths[tchoose]));
    delay(1500);
    count++;
      }
      else if (count == 4){
    s_count=2;
      }
 }//end s_count == 1
//----------------------------------------------------end s1, start s2
 else if(s_count ==2){
      for(int i=0; i<8; i++){
        tasks1[i].stop();
      }
      int pchoose = int(random(0,5));
      int p2choose = int(random(0,8));
      int tchoose = int(random(0,7));

    if(count2 == 0){
    sentence2[0].amp(1);
    sentence2[0].play();
    sentence2[0].jump(0);
    delay(int(1000*sentence2_lengths[0]));
    count2++;
      }
      else if (count2 == 1){
    sentence1[0].stop();
    delay(100);
    people2[p2choose].amp(1);
    people2[p2choose].play();
    people2[p2choose].jump(0);
    delay(int(1000*people2_lengths[p2choose]));
    count2++;
      }
      else if (count2 == 2){
    people2[p2choose].stop();
    delay(100);
    sentence2[1].amp(1);
    sentence2[1].play();
    sentence2[1].jump(0);
    delay(int(1000*sentence2_lengths[1]));  
    count2++;
      }
      else if (count2 == 3){
    sentence2[1].stop();
    delay(100);
    people1[pchoose].amp(1);
    people1[pchoose].play();
    people1[pchoose].jump(0);
    delay(int(1000*people1_lengths[pchoose]));
    count2++;
      }
      else if (count2 == 4){
    people1[pchoose].stop();
    delay(100);
    sentence2[2].amp(1);
    sentence2[2].play();
    sentence2[2].jump(0);
    delay(int(1000*sentence2_lengths[2]));  
    count2++;
      }
      else if (count2 == 5){
    sentence2[2].stop();
    delay(100);
    tasks1[tchoose].amp(1);
    tasks1[tchoose].play();
    tasks1[tchoose].jump(0);
    delay(int(1000*tasks1_lengths[tchoose]));
    delay(500);
    count2++;
      }
      else if (count2 == 6){
    s_count=3;
      }
}//end s_count == 2

   
 
//----------------------------------------------------ens s2, start s3
  
  else if(s_count ==3){
      for(int i=0; i<8; i++){
        tasks1[i].stop();
      }
      int pchoose = int(random(0,5));
      int t2choose = int(random(0,7));
      int p2choose = int(random(0,8));
      int cchoose = int(random(0,6));

    if(count3 == 0){
    sentence3[0].amp(1);
    sentence3[0].play();
    sentence3[0].jump(0);
    delay(int(1000*sentence3_lengths[0]));
    count3++;
      }
      else if (count3 == 1){
    sentence3[0].stop();
    delay(100);
    tasks2[t2choose].amp(1);
    tasks2[t2choose].play();
    tasks2[t2choose].jump(0);
    delay(int(1000*tasks2_lengths[t2choose]));
    count3++;
      }
      else if (count3 == 2){
    tasks2[t2choose].stop();
    delay(100);
    sentence3[1].amp(1);
    sentence3[1].play();
    sentence3[1].jump(0);
    delay(int(1000*sentence3_lengths[1]));  
    count3++;
      }
      else if (count3 == 3){
    sentence3[1].stop();
    delay(100);
    people1[pchoose].amp(1);
    people1[pchoose].play();
    people1[pchoose].jump(0);
    delay(int(1000*people1_lengths[pchoose]));
    count3++;
      }
      else if (count3 == 4){
    people1[pchoose].stop();
    delay(100);
    consequences[cchoose].amp(1);
    consequences[cchoose].play();
    consequences[cchoose].jump(0);
    delay(int(1000*consequences_lengths[cchoose]));  
            if(cchoose ==2){
              count3 = 6;
            }
            else{
              count3++;
            }
      }
      
      else if (count3 == 5){
    count=0;
    s_count=1;
      }
      else if (count3 == 6){
   consequences[cchoose].stop();
   delay(100);
   people2[p2choose].amp(1);
   people2[p2choose].play();
   people2[p2choose].jump(0);
   delay(int(1000*people2_lengths[p2choose]));  
   count3 = 5; 
      }
}//end s_count == 3
  
  
  
  
}
