//---------------------------------------------------------------------------

#include <fmx.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.fmx"
#pragma resource ("*.NmXhdpiPh.fmx", _PLAT_ANDROID)
#pragma resource ("*.iPhone4in.fmx", _PLAT_IOS)

TForm3D1 *Form3D1;
//---------------------------------------------------------------------------
__fastcall TForm3D1::TForm3D1(TComponent* Owner)
	: TForm3D(Owner)
{
}
//---------------------------------------------------------------------------

