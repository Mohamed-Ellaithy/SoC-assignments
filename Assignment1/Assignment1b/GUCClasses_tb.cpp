#include <iostream>
#include <stdio.h>
#include<string>
#include "GUCClasses.h"

using namespace std;

int main()
{
	Student S1;
	float grade;

	S1.name = "Mohamed Ellaithy";
	S1.Faculty = "Engineering";
	S1.ID = 4932;
	S1.SetGPA(1.8);
	grade = S1.GetGPA();

	printf("\nThe student's GPA is %.2f\n",grade);
	S1.display();

	GUC S2;
	S2.name = "Omar Ellaithy";
	S2.display();






return 0;
}
