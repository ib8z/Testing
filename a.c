#include <stdio.h>

int main()
{
 string read_from_files; 

 fstream read("data.txt", ios::in);

 fstream log_txt("log.txt", ios::app);
 log_txt << currentDateTime() << endl;

 log_txt.close();

 gk_banner();

    do{
        multi_chose();
        cout<<endl<<"\nEnter a number please : ";
        cin>>intput_from_singup_or_login;

            if(intput_from_singup_or_login=="3")
                {
                    end_app();
                    return 0;
                }

    }while(intput_from_singup_or_login!= "1" && intput_from_singup_or_login!= "2");


    if(intput_from_singup_or_login=="1")
        {
            login(user1, password_user1); 
            Sleep(500);
        }



    if(intput_from_singup_or_login == "2")
    {
        string new_user ;
        string new_password ;

        fstream users_file_txt("data.txt", ios::app);
        users_file_txt << "|---------------------------------------------|" << endl;

        sing_up(new_user, new_password, intput_from_singup_or_login);

        users_file_txt << setw(12) << new_user << setw(34) << new_password ;
        users_file_txt << endl << "|---------------------------------------------|" << endl;

        users_file_txt.close();
    }


if(intput_from_singup_or_login=="1")
    {
        your_info(user1, password_user1);
    }



    if(intput_from_singup_or_login=="1")
        {
            cout<<endl<<"nice, after login what do you want to do ?";
            Sleep(500);
        }
    else{ 
            cout<<endl<<"nice, after sing up what do you want to do ?";
            Sleep(500);
        }


string input_from_user="0";
do{
        cout<<endl<<"1-Read some articles";
        Sleep(250);
        cout<<endl<<"2-play game";
        Sleep(250);
        cout<<endl<<"3-Display some banner";
        Sleep(250);
        cout<<endl<<"0-exit from application"<<endl;
        Sleep(250);
        cout<<endl<<"Enter a number please : ";
        cin>>input_from_user;

            if(input_from_user=="0")
            {
                end_app();
                return 0;
            }
            if(input_from_user == "3" || input_from_user == "2" || input_from_user == "1")
                break;

}while(input_from_user != "3" || input_from_user != "2" || input_from_user != "2" || input_from_user != "0" );



if(input_from_user=="1")
    {   

        do{
            cout<<endl<<endl<<"this some Articles chose what you want read...";
            cout<<endl<<"0-to exit";
            Sleep(350);
            cout<<endl<<"1-What is C++ language ? ";
            Sleep(350);
            cout<<endl<<"2-What is Linux ?";
            Sleep(350);
            cout<<endl<<"3-What is c language ?";
            Sleep(350);
            cout<<endl<<"Enter a number please : ";
            cin>>input_from_user;

            if(input_from_user=="0")
            {
                end_app();
                return 0;
            }
            if(input_from_user=="1")
                articles_1();
                    
            if(input_from_user=="2")
                articles_2();
                    
            if(input_from_user=="3")
                articles_3();

            if(input_from_user != "1" || input_from_user != "2" || input_from_user != "3" )
                cout<<endl<<"please enter number 1-3";

        }while(input_from_user!="1" || input_from_user!="2" || input_from_user!="3");  



            while(true)
            {
                cout<<endl<<endl<<endl;
                articles();
                cin>>input_from_user;

                if(input_from_user=="0")
                break;
                
                if(input_from_user=="1")
                articles_1();
            
                if(input_from_user=="2")
                articles_2();
                
                if(input_from_user=="3")
                articles_3();
            }
    }


if(input_from_user=="2")
    game_random_number();



    if(input_from_user=="3")
    {
        int number_of_story = 0;
        while(true)
        {
            cout<<endl<<"Enter number 1-9 ( Enter -99 to exit ) : ";
            cin>>number_of_story;
            if(number_of_story == -99)
                break;

            if(number_of_story < 1 || number_of_story > 9)
                cout<<endl<<"Please Enter number 1-9 !!!"<<endl;
            
            print_banner(number_of_story);
        }

    }


 end_app();
    return 0;
}
