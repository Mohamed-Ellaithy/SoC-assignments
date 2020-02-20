#include <iostream>
#include <stdio.h>
using namespace std;

class GUC
{
     public:
        string name;
        int ID;
        string Faculty;

        void display()
        {
             cout << "GUC student's Name is: " << name << "\n" << endl;

        }

};

class Student : public GUC
{
	private:
		float GPA;

	public:
        void display()
        {
             cout << "\nThe Student's name is: " << name << "\n" << endl;

        }

		float GetGPA(void)
		{
			return GPA;
		}

		void SetGPA(float NewGPA)
		{
			GPA = NewGPA;
		}

};
