#line 1 "h:\\myproject\\myutility\\windowsexercises\\pipe\\pipe.cpp"



#line 1 "h:\\myproject\\myutility\\windowsexercises\\pipe\\stdafx.h"





#pragma once

#line 1 "h:\\myproject\\myutility\\windowsexercises\\pipe\\targetver.h"
#pragma once










#line 13 "h:\\myproject\\myutility\\windowsexercises\\pipe\\targetver.h"

#line 9 "h:\\myproject\\myutility\\windowsexercises\\pipe\\stdafx.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 





#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














#line 38 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 42 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




















    

#line 65 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 67 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"














#pragma once































































































#line 112 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"




#line 117 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"




#line 122 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"
#line 123 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"





















#line 145 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"



#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"



































































































































































































































































































































































































































































































































































































































































                                                




                                                






































































































































#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


#pragma once








#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"





typedef __w64 unsigned int   size_t;
#line 21 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
















#line 40 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


namespace vc_attributes
{
#line 45 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

enum YesNoMaybe
{
	
	No = 0x0fff0001,
	Maybe = 0x0fff0010,
	Yes = 0x0fff0100
};

typedef enum YesNoMaybe YesNoMaybe;

enum AccessType
{
	NoAccess = 0,
	Read = 1,
	Write = 2,
	ReadWrite = 3
};

typedef enum AccessType AccessType;



[repeatable]
[source_annotation_attribute( Parameter )]
struct PreAttribute
{

	PreAttribute();
#line 75 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostAttribute
{

	PostAttribute();
#line 106 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	YesNoMaybe MustCheck;
	const wchar_t* Condition;
};

[source_annotation_attribute( Parameter )]
struct FormatStringAttribute
{

	FormatStringAttribute();
#line 137 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	const wchar_t* Style;
	const wchar_t* UnformattedAlternative;
};

[repeatable]
[source_annotation_attribute( ReturnValue )]
struct InvalidCheckAttribute
{

	InvalidCheckAttribute();
#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	long Value;
};

[source_annotation_attribute( Method )]
struct SuccessAttribute
{

	SuccessAttribute();
#line 159 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreBoundAttribute
{

	PreBoundAttribute();
#line 170 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostBoundAttribute
{

	PostBoundAttribute();
#line 180 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreRangeAttribute
{

	PreRangeAttribute();
#line 190 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostRangeAttribute
{

	PostRangeAttribute();
#line 202 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};

#line 208 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


};  
#line 212 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"






















typedef ::vc_attributes::YesNoMaybe SA_YesNoMaybe;
const ::vc_attributes::YesNoMaybe SA_Yes = ::vc_attributes::Yes;
const ::vc_attributes::YesNoMaybe SA_No = ::vc_attributes::No;
const ::vc_attributes::YesNoMaybe SA_Maybe = ::vc_attributes::Maybe;

typedef ::vc_attributes::AccessType SA_AccessType;
const ::vc_attributes::AccessType SA_NoAccess = ::vc_attributes::NoAccess;
const ::vc_attributes::AccessType SA_Read = ::vc_attributes::Read;
const ::vc_attributes::AccessType SA_Write = ::vc_attributes::Write;
const ::vc_attributes::AccessType SA_ReadWrite = ::vc_attributes::ReadWrite;


typedef ::vc_attributes::PreAttribute          SA_Pre;
typedef ::vc_attributes::PostAttribute         SA_Post;
typedef ::vc_attributes::FormatStringAttribute SA_FormatString;
typedef ::vc_attributes::InvalidCheckAttribute SA_InvalidCheck; 
typedef ::vc_attributes::SuccessAttribute      SA_Success;
typedef ::vc_attributes::PreBoundAttribute     SA_PreBound;
typedef ::vc_attributes::PostBoundAttribute    SA_PostBound;
typedef ::vc_attributes::PreRangeAttribute     SA_PreRange;
typedef ::vc_attributes::PostRangeAttribute    SA_PostRange;
#line 256 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"















#line 272 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 274 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"




















#line 295 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


#line 298 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 933 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"













































































































































































































































































































































#line 1267 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"



















































































































































































































#line 1479 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"
extern "C" {




#line 1485 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"




























































































































































































































#line 1706 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#line 1740 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"



































































































































































































































    
    
#line 1970 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"






#line 1977 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"
#line 1978 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"


}
#line 1982 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\sal.h"



#line 69 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"










#line 80 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 87 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtassem.h"












#pragma once



#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtassem.h"



#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtassem.h"



#line 26 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtassem.h"
#line 93 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#pragma comment(linker,"/manifestdependency:\"type='win32' "            \
        "name='" "Microsoft.VC90" ".DebugCRT' "         \
        "version='" "9.0.21022.8" "' "                          \
        "processorArchitecture='x86' "                                  \
        "publicKeyToken='" "1fc8b3b9a1e18e3b" "'\"")






#line 109 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 111 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





































#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 151 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#pragma pack(push,8)
#line 158 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"













#pragma once
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"






#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"









#pragma pack(push,8)
#line 34 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"


extern "C" {
#line 38 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"








#line 47 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"





typedef __w64 unsigned int   uintptr_t;
#line 54 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"

#line 56 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"





typedef char *  va_list;
#line 63 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"

#line 65 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"





#line 71 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"











#line 83 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"


#line 86 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"













#line 100 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"












































#line 145 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"


}
#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"


#pragma pack(pop)
#line 153 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"

#line 155 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\vadefs.h"
#line 160 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


extern "C" {
#line 164 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 170 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 175 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 180 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







#line 188 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 195 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 197 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 198 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"








#line 207 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 208 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"










#line 219 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


#line 222 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 223 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 229 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"









#line 239 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 241 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







#line 249 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 250 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 255 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 257 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 258 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 263 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 265 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 266 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


 

#line 271 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
  
 #line 273 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 274 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"










#line 285 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 286 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 293 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 294 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

















#line 312 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 317 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 324 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 330 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 337 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 338 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 344 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 351 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 352 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 359 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 360 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 365 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


#line 368 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 370 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 371 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 372 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 378 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"










#line 389 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 391 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 392 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 393 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"










#line 404 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 411 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 412 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







#line 420 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 422 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 423 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



 
  
 



#line 433 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 434 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


 
  
  
 



#line 444 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 445 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


 
  
   
  

#line 453 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
 



#line 458 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 459 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





#line 465 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 470 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 472 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 473 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"












typedef size_t rsize_t;

#line 488 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 489 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





typedef __w64 int            intptr_t;
#line 496 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 498 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














typedef __w64 int            ptrdiff_t;
#line 514 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 516 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







typedef unsigned short wint_t;
typedef unsigned short wctype_t;

#line 527 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





















__declspec(deprecated("This name was supported during some Whidbey pre-releases. Instead, use the standard name errno_t.")) typedef int errcode;


#line 552 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

typedef int errno_t;
#line 555 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


typedef __w64 long __time32_t;   

#line 560 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


typedef __int64 __time64_t;     

#line 565 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"





typedef __time64_t time_t;      
#line 572 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 574 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







#line 582 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 583 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 588 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 590 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 591 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 596 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 598 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 599 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 606 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 607 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 612 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 616 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"











#line 628 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 633 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"




#line 638 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 640 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 641 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"







#line 649 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


































































































































































#line 812 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 813 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"









































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1879 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"















































































































































#line 2023 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"
#line 2024 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct * pthreadlocinfo;
typedef struct threadmbcinfostruct * pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct
{
    pthreadlocinfo locinfo;
    pthreadmbcinfo mbcinfo;
} _locale_tstruct, *_locale_t;


typedef struct tagLC_ID {
        unsigned short wLanguage;
        unsigned short wCountry;
        unsigned short wCodePage;
} LC_ID, *LPLC_ID;

#line 2045 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


typedef struct threadlocaleinfostruct {
        int refcount;
        unsigned int lc_codepage;
        unsigned int lc_collate_cp;
        unsigned long lc_handle[6]; 
        LC_ID lc_id[6];
        struct {
            char *locale;
            wchar_t *wlocale;
            int *refcount;
            int *wrefcount;
        } lc_category[6];
        int lc_clike;
        int mb_cur_max;
        int * lconv_intl_refcount;
        int * lconv_num_refcount;
        int * lconv_mon_refcount;
        struct lconv * lconv;
        int * ctype1_refcount;
        unsigned short * ctype1;
        const unsigned short * pctype;
        const unsigned char * pclmap;
        const unsigned char * pcumap;
        struct __lc_time_data * lc_time_curr;
} threadlocinfo;

#line 2074 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


}
#line 2078 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 2082 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 2084 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 2088 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 2090 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 2094 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 2096 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"






#line 2103 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"



#line 2107 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"


#pragma pack(pop)
#line 2111 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 2113 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"

#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"





#pragma pack(push,8)
#line 30 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


extern "C" {
#line 34 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

























struct _iobuf {
        char *_ptr;
        int   _cnt;
        char *_base;
        int   _flag;
        int   _file;
        int   _charbuf;
        int   _bufsiz;
        char *_tmpfname;
        };
typedef struct _iobuf FILE;

#line 72 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"










#line 83 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"













#line 97 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"





















#line 119 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"







#line 127 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
#line 128 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"




__declspec(dllimport) FILE * __cdecl __iob_func(void);
#line 134 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"










#line 145 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"



typedef __int64 fpos_t;




#line 154 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
#line 155 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


#line 158 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"






#line 165 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
























[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _filbuf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File );
 __declspec(dllimport) int __cdecl _flsbuf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);




[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _fsopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ShFlag);
#line 197 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

__declspec(dllimport) void __cdecl clearerr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) errno_t __cdecl clearerr_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File );
#line 202 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl fclose([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fcloseall(void);




[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _fdopen([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _FileHandle, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode);
#line 210 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl feof([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl ferror([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] FILE * _File);
 __declspec(dllimport) int __cdecl fflush([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl fgetc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fgetchar(void);
 __declspec(dllimport) int __cdecl fgetpos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File , [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] fpos_t * _Pos);
 __declspec(dllimport) char * __cdecl fgets([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _MaxCount, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);




[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _fileno([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] FILE * _File);
#line 224 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"




#line 229 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) char * __cdecl _tempnam([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _DirName, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _FilePrefix);



#line 235 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

 __declspec(dllimport) int __cdecl _flushall(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "fopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl fopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode);

 __declspec(dllimport) errno_t __cdecl fopen_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] FILE ** _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode);
#line 241 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl fprintf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);

 __declspec(dllimport) int __cdecl fprintf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
#line 245 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl fputc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fputchar([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch);
 __declspec(dllimport) int __cdecl fputs([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) size_t __cdecl fread([SA_Pre(Null=SA_No,WritableBytes="\n@""_ElementSize*_Count")] [SA_Pre(Deref=1,Valid=SA_No)] void * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ElementSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) size_t __cdecl fread_s([SA_Pre(Null=SA_No,WritableBytes="\n@""_ElementSize*_Count")] [SA_Pre(Deref=1,Valid=SA_No)] void * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ElementSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
#line 252 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "freopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl freopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) errno_t __cdecl freopen_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] FILE ** _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _OldFile);
#line 256 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "fscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl fscanf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _fscanf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
#pragma warning(push)
#pragma warning(disable:6530)

 __declspec(dllimport) int __cdecl fscanf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, ...);
#line 263 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _fscanf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl fsetpos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const fpos_t * _Pos);
 __declspec(dllimport) int __cdecl fseek([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Offset, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Origin);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long __cdecl ftell([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) int __cdecl _fseeki64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Offset, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Origin);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _ftelli64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) size_t __cdecl fwrite([SA_Pre(Null=SA_No,ValidElements="\n@""_Size*_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl getc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl getchar(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _getmaxstdio(void);

__declspec(dllimport) char * __cdecl gets_s([SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _Size);
#line 278 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { template <size_t _Size> inline char * __cdecl gets_s(char (&_Buffer)[_Size]) { return gets_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "gets_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl gets([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Null=SA_No,WritableElementsConst=((size_t)-1))] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Buffer);
[returnvalue:SA_Post(MustCheck=SA_Yes)] int __cdecl _getw([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);


__declspec(dllimport) void __cdecl perror([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _ErrMsg);
#line 285 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _pclose([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _popen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Command, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Mode);
 __declspec(dllimport) int __cdecl printf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);

 __declspec(dllimport) int __cdecl printf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
#line 291 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl putc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl putchar([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch);
 __declspec(dllimport) int __cdecl puts([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str);
 __declspec(dllimport) int __cdecl _putw([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Word, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl remove([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl rename([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _OldFilename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _NewFilename);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _unlink([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_unlink" ". See online help for details.")) __declspec(dllimport) int __cdecl unlink([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename);
#line 303 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
#line 304 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
__declspec(dllimport) void __cdecl rewind([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _rmtmp(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "scanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl scanf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_scanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _scanf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);

 __declspec(dllimport) int __cdecl scanf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, ...);
#line 311 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _scanf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "setvbuf" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl setbuf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_Maybe,WritableElementsConst=512)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Post(ValidElementsConst=0)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buffer);
 __declspec(dllimport) int __cdecl _setmaxstdio([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Max);
 __declspec(dllimport) unsigned int __cdecl _set_output_format([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Format);
 __declspec(dllimport) unsigned int __cdecl _get_output_format(void);
 __declspec(dllimport) int __cdecl setvbuf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
 __declspec(dllimport) int __cdecl _snprintf_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl _snprintf_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...) { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return _vsnprintf_s(_Dest, _Size, _MaxCount, _Format, _ArgList); } __pragma(warning(pop)); }

 __declspec(dllimport) int __cdecl sprintf_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
#line 322 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl sprintf_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...) { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return vsprintf_s(_Dest, _Size, _Format, _ArgList); } __pragma(warning(pop)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "sscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl sscanf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _sscanf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);

 __declspec(dllimport) int __cdecl sscanf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, ...);
#line 329 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _sscanf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snscanf([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snscanf_l([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _snscanf_s([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, ...);
 __declspec(dllimport) int __cdecl _snscanf_s_l([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpfile_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl tmpfile(void);

 __declspec(dllimport) errno_t __cdecl tmpfile_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No)] [SA_Post(Deref=2,Valid=SA_Yes)] FILE ** _File);
 __declspec(dllimport) errno_t __cdecl tmpnam_s([SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _Size);
#line 339 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl tmpnam_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Buf)[_Size]) { return tmpnam_s(_Buf, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "tmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl tmpnam([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Buffer);
 __declspec(dllimport) int __cdecl ungetc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl vfprintf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl vfprintf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
#line 346 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl vprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl vprintf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
#line 350 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl vsnprintf([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl vsnprintf_s([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
#line 354 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _vsnprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl _vsnprintf_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _Args) { return _vsnprintf_s(_Dest, _Size, _MaxCount, _Format, _Args); } }
#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snprintf([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnprintf([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _Args);
#pragma warning(pop)

__declspec(dllimport) int __cdecl vsprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
#line 363 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { template <size_t _Size> inline int __cdecl vsprintf_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _Args) { return vsprintf_s(_Dest, _Size, _Format, _Args); } }
#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "sprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl sprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vsprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl vsprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _Args);
#pragma warning(pop)
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _snprintf_c([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
 __declspec(dllimport) int __cdecl _vsnprintf_c([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char *_DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl _fprintf_p([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
 __declspec(dllimport) int __cdecl _printf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
 __declspec(dllimport) int __cdecl _sprintf_p([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
 __declspec(dllimport) int __cdecl _vfprintf_p([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsprintf_p([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, va_list _ArgList);
__declspec(dllimport) int __cdecl _set_printf_count_output([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value);
__declspec(dllimport) int __cdecl _get_printf_count_output();

 __declspec(dllimport) int __cdecl _printf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _printf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _printf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vprintf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(dllimport) int __cdecl _fprintf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _fprintf_p_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _fprintf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vfprintf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vfprintf_p_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vfprintf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_sprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _sprintf_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _sprintf_p_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _sprintf_s_l([SA_Pre(Null=SA_No,WritableBytes="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsprintf_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsprintf_p_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char* _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale,  va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(dllimport) int __cdecl _scprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _scprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vscprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vscprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snprintf_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _snprintf_c_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _snprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnprintf_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsnprintf_c_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, const char *, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsnprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const char* _Format,[SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);







#line 423 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"




[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _wfsopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ShFlag);
#line 429 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

 __declspec(dllimport) wint_t __cdecl fgetwc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wint_t __cdecl _fgetwchar(void);
 __declspec(dllimport) wint_t __cdecl fputwc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wint_t __cdecl _fputwchar([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl getwc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl getwchar(void);
 __declspec(dllimport) wint_t __cdecl putwc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wint_t __cdecl putwchar([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch);
 __declspec(dllimport) wint_t __cdecl ungetwc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);

 __declspec(dllimport) wchar_t * __cdecl fgetws([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl fputws([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wchar_t * __cdecl _getws_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline wchar_t * __cdecl _getws_s(wchar_t (&_String)[_Size]) { return _getws_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_getws_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _getws([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String);
 __declspec(dllimport) int __cdecl _putws([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str);

 __declspec(dllimport) int __cdecl fwprintf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);

 __declspec(dllimport) int __cdecl fwprintf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
#line 451 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl wprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);

 __declspec(dllimport) int __cdecl wprintf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
#line 455 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scwprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl vfwprintf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl vfwprintf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
#line 460 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl vwprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl vwprintf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
#line 464 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


__declspec(dllimport) int __cdecl swprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
#line 468 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl swprintf_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...) { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return vswprintf_s(_Dest, _Size, _Format, _ArgList); } __pragma(warning(pop)); }

__declspec(dllimport) int __cdecl vswprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
#line 472 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
extern "C++" { template <size_t _Size> inline int __cdecl vswprintf_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _Args) { return vswprintf_s(_Dest, _Size, _Format, _Args); } }

 __declspec(dllimport) int __cdecl _swprintf_c([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _vswprintf_c([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl _snwprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
extern "C++" { __pragma(warning(push)); __pragma(warning(disable: 4793)); template <size_t _Size> inline int __cdecl _snwprintf_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...) { va_list _ArgList; ( _ArgList = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) ); return _vsnwprintf_s(_Dest, _Size, _Count, _Format, _ArgList); } __pragma(warning(pop)); }
 __declspec(dllimport) int __cdecl _vsnwprintf_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
extern "C++" { template <size_t _Size> inline int __cdecl _vsnwprintf_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _Args) { return _vsnwprintf_s(_Dest, _Size, _Count, _Format, _Args); } }
#pragma warning(push)
#pragma warning(disable:4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwprintf([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnwprintf([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _Args);
#pragma warning(pop)

 __declspec(dllimport) int __cdecl _fwprintf_p([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _wprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _vfwprintf_p([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vwprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _swprintf_p([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _vswprintf_p([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scwprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscwprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl _wprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _wprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _wprintf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vwprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vwprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vwprintf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(dllimport) int __cdecl _fwprintf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _fwprintf_p_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _fwprintf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vfwprintf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vfwprintf_p_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vfwprintf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(dllimport) int __cdecl _swprintf_c_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _swprintf_p_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _swprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vswprintf_c_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vswprintf_p_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vswprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scwprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _scwprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscwprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwprintf_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _snwprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vsnwprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _vsnwprintf_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vsnwprintf_s_l([SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);










#line 535 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


#pragma warning(push)
#pragma warning(disable:4141 4996 4793)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl _swprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl _vswprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _Args);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "__swprintf_l_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl __swprintf_l( wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, _locale_t _Plocinfo, ...); __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(dllimport) int __cdecl __vswprintf_l( wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, _locale_t _Plocinfo, va_list _Args);
#pragma warning(pop)


#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"












#pragma once







#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"










#line 33 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"

#pragma warning( push )
#pragma warning( disable : 4793 4412 )
static __inline int swprintf(wchar_t * _String, size_t _Count, const wchar_t * _Format, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, 0, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )
static __inline int __cdecl vswprintf(wchar_t * _String, size_t _Count, const wchar_t * _Format, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, 0, _Ap);
}
#pragma warning( pop )


#line 57 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"

#pragma warning( push )
#pragma warning( disable : 4793 4412 )
static __inline int _swprintf_l(wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, ...)
{
    va_list _Arglist;
    int _Ret;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Plocinfo) ) + ( (sizeof(_Plocinfo) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    _Ret = _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4412 )
static __inline int __cdecl _vswprintf_l(wchar_t * _String, size_t _Count, const wchar_t * _Format, _locale_t _Plocinfo, va_list _Ap)
{
    return _vswprintf_c_l(_String, _Count, _Format, _Plocinfo, _Ap);
}
#pragma warning( pop )


#pragma warning( push )
#pragma warning( disable : 4996 )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "swprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int swprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...)
{
    va_list _Arglist;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Format) ) + ( (sizeof(_Format) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    int _Ret = _vswprintf(_String, _Format, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "vswprintf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int __cdecl vswprintf([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _Ap)
{
    return _vswprintf(_String, _Format, _Ap);
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4793 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int _swprintf_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, _locale_t _Plocinfo, ...)
{
    va_list _Arglist;
    ( _Arglist = (va_list)( &reinterpret_cast<const char &>(_Plocinfo) ) + ( (sizeof(_Plocinfo) + sizeof(int) - 1) & ~(sizeof(int) - 1) ) );
    int _Ret = __vswprintf_l(_String, _Format, _Plocinfo, _Arglist);
    ( _Arglist = (va_list)0 );
    return _Ret;
}
#pragma warning( pop )

#pragma warning( push )
#pragma warning( disable : 4141 )
extern "C++" __declspec(deprecated("swprintf has been changed to conform with the ISO C standard, adding an extra character count parameter. To use traditional Microsoft swprintf, set _CRT_NON_CONFORMING_SWPRINTFS.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_vswprintf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline int __cdecl _vswprintf_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, _locale_t _Plocinfo, va_list _Ap)
{
    return __vswprintf_l(_String, _Format, _Plocinfo, _Ap);
}
#pragma warning( pop )

#pragma warning( pop )

#line 126 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"

#line 128 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"
#line 129 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\swprintf.inl"

#line 545 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
#line 546 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"













#line 560 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wtempnam([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Directory, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _FilePrefix);



#line 566 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscwprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, va_list _ArgList);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _vscwprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "fwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl fwscanf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _fwscanf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);

 __declspec(dllimport) int __cdecl fwscanf_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, ...);
#line 574 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _fwscanf_s_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "swscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl swscanf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_swscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _swscanf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);

 __declspec(dllimport) int __cdecl swscanf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, ...);
#line 580 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _swscanf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwscanf([SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_snwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _snwscanf_l([SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _snwscanf_s([SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _snwscanf_s_l([SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "wscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl wscanf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _wscanf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);

 __declspec(dllimport) int __cdecl wscanf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, ...);
#line 590 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
 __declspec(dllimport) int __cdecl _wscanf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf_s")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
#pragma warning(pop)

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _wfdopen([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _FileHandle , [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl _wfopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode);
 __declspec(dllimport) errno_t __cdecl _wfopen_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] FILE ** _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wfreopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) FILE * __cdecl _wfreopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _OldFile);
 __declspec(dllimport) errno_t __cdecl _wfreopen_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] FILE ** _File, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _OldFile);



__declspec(dllimport) void __cdecl _wperror([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ErrMsg);
#line 603 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) FILE * __cdecl _wpopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Command, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Mode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wremove([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename);
 __declspec(dllimport) errno_t __cdecl _wtmpnam_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wtmpnam_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size]) { return _wtmpnam_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wtmpnam_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wtmpnam([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Buffer);

 __declspec(dllimport) wint_t __cdecl _fgetwc_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wint_t __cdecl _fputwc_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) wint_t __cdecl _ungetwc_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);






#line 619 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"
inline wint_t __cdecl getwchar()
        {return (fgetwc((&__iob_func()[0]))); }   
inline wint_t __cdecl putwchar(wchar_t _C)
        {return (fputwc(_C, (&__iob_func()[1]))); }       
#line 624 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"










#line 635 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


#line 638 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


#line 641 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"















#line 657 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"












__declspec(dllimport) void __cdecl _lock_file([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
__declspec(dllimport) void __cdecl _unlock_file([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);



#line 675 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


 __declspec(dllimport) int __cdecl _fclose_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fflush_nolock([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) size_t __cdecl _fread_nolock([SA_Pre(Null=SA_No,WritableBytes="\n@""_ElementSize*_Count")] [SA_Pre(Deref=1,Valid=SA_No)] void * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ElementSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) size_t __cdecl _fread_nolock_s([SA_Pre(Null=SA_No,WritableBytes="\n@""_ElementSize*_Count")] [SA_Pre(Deref=1,Valid=SA_No)] void * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ElementSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fseek_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Offset, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Origin);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long __cdecl _ftell_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _fseeki64_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Offset, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Origin);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _ftelli64_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) size_t __cdecl _fwrite_nolock([SA_Pre(Null=SA_No,ValidBytes="\n@""_Size*_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(dllimport) int __cdecl _ungetc_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);












#line 700 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"











#line 712 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_tempnam" ". See online help for details.")) __declspec(dllimport) char * __cdecl tempnam([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Directory, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _FilePrefix);



#line 718 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcloseall" ". See online help for details.")) __declspec(dllimport) int __cdecl fcloseall(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fdopen" ". See online help for details.")) __declspec(dllimport) FILE * __cdecl fdopen([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _FileHandle, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fgetchar" ". See online help for details.")) __declspec(dllimport) int __cdecl fgetchar(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fileno" ". See online help for details.")) __declspec(dllimport) int __cdecl fileno([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] FILE * _File);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_flushall" ". See online help for details.")) __declspec(dllimport) int __cdecl flushall(void);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fputchar" ". See online help for details.")) __declspec(dllimport) int __cdecl fputchar([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_getw" ". See online help for details.")) __declspec(dllimport) int __cdecl getw([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putw" ". See online help for details.")) __declspec(dllimport) int __cdecl putw([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] FILE * _File);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_rmtmp" ". See online help for details.")) __declspec(dllimport) int __cdecl rmtmp(void);

#line 730 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


}
#line 734 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"


#pragma pack(pop)
#line 738 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

#line 740 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdio.h"

#line 11 "h:\\myproject\\myutility\\windowsexercises\\pipe\\stdafx.h"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"
















#pragma once
#line 19 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 21 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"









#pragma warning(disable:4514)       
 
#line 33 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


















extern "C" {
#line 53 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"







#pragma deprecated("_ftcscat")
#pragma deprecated("_ftcschr")
#pragma deprecated("_ftcscpy")
#pragma deprecated("_ftcscspn")
#pragma deprecated("_ftcslen")
#pragma deprecated("_ftcsncat")
#pragma deprecated("_ftcsncpy")
#pragma deprecated("_ftcspbrk")
#pragma deprecated("_ftcsrchr")
#pragma deprecated("_ftcsspn")
#pragma deprecated("_ftcsstr")
#pragma deprecated("_ftcstok")
#pragma deprecated("_ftcsdup")
#pragma deprecated("_ftcsnset")
#pragma deprecated("_ftcsrev")
#pragma deprecated("_ftcsset")
#pragma deprecated("_ftcscmp")
#pragma deprecated("_ftcsicmp")
#pragma deprecated("_ftcsnccmp")
#pragma deprecated("_ftcsncmp")
#pragma deprecated("_ftcsncicmp")
#pragma deprecated("_ftcsnicmp")
#pragma deprecated("_ftcscoll")
#pragma deprecated("_ftcsicoll")
#pragma deprecated("_ftcsnccoll")
#pragma deprecated("_ftcsncoll")
#pragma deprecated("_ftcsncicoll")
#pragma deprecated("_ftcsnicoll")
#pragma deprecated("_ftcsclen")
#pragma deprecated("_ftcsnccat")
#pragma deprecated("_ftcsnccpy")
#pragma deprecated("_ftcsncset")
#pragma deprecated("_ftcsdec")
#pragma deprecated("_ftcsinc")
#pragma deprecated("_ftcsnbcnt")
#pragma deprecated("_ftcsnccnt")
#pragma deprecated("_ftcsnextc")
#pragma deprecated("_ftcsninc")
#pragma deprecated("_ftcsspnp")
#pragma deprecated("_ftcslwr")
#pragma deprecated("_ftcsupr")
#pragma deprecated("_ftclen")
#pragma deprecated("_ftccpy")
#pragma deprecated("_ftccmp")
#line 105 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"





































































































































































































































































































































































































































































































































































































































































































































































}   
#line 848 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"


extern "C" {
#line 27 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"




#line 32 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
















__declspec(dllimport) void *  __cdecl _memccpy( [SA_Pre(Null=SA_Maybe,WritableBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const void *  __cdecl memchr( [SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf , [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _memicmp([SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf1, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _memicmp_l([SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf1, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] int     __cdecl memcmp([SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf1, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
         void *  __cdecl memcpy([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_Size")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);

__declspec(dllimport) errno_t  __cdecl memcpy_s([SA_Pre(Null=SA_Maybe,WritableBytes="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_MaxCount")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _DstSize, [SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 57 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
        void *  __cdecl memset([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_Size")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);



__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memccpy" ". See online help for details.")) __declspec(dllimport) void * __cdecl memccpy([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] void * _Dst, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_memicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl memicmp([SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf1, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Buf2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
#line 64 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

#line 66 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

 __declspec(dllimport) errno_t __cdecl _strset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value) { return _strset_s(_Dest, _Size, _Value); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl _strset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value);

 __declspec(dllimport) errno_t __cdecl strcpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src);
#line 73 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source) { return strcpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcpy([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source);

 __declspec(dllimport) errno_t __cdecl strcat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src);
#line 78 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source) { return strcat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))  char * __cdecl strcat([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] int     __cdecl strcmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] size_t  __cdecl strlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t  __cdecl strnlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);

[returnvalue:SA_Post(MustCheck=SA_Yes)] static __inline size_t  __cdecl strnlen_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount)
{
    return (_Str==0) ? 0 : strnlen(_Str, _MaxCount);
}
#line 89 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

 __declspec(dllimport) errno_t __cdecl memmove_s([SA_Pre(Null=SA_Maybe,WritableBytes="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_MaxCount")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _DstSize, [SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 92 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"



#line 96 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
__declspec(dllimport)  void *  __cdecl memmove([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_Size")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
#line 98 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"




#line 103 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) char *  __cdecl _strdup([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src);



#line 109 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const char *  __cdecl strchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _stricmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strcmpi([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _stricmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl strcoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const  char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strcoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _stricoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _stricoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strncoll  ([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strncoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strnicoll ([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strnicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t  __cdecl strcspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char *  __cdecl _strerror([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _ErrMsg);
 __declspec(dllimport) errno_t __cdecl _strerror_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(char (&_Buffer)[_Size], [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _ErrorMessage) { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char *  __cdecl strerror([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int);

 __declspec(dllimport) errno_t __cdecl strerror_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ErrNum);
#line 130 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(char (&_Buffer)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ErrorMessage) { return strerror_s(_Buffer, _Size, _ErrorMessage); } }
 __declspec(dllimport) errno_t __cdecl _strlwr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size]) { return _strlwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strlwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String);
 __declspec(dllimport) errno_t __cdecl _strlwr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _strlwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strlwr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

 __declspec(dllimport) errno_t __cdecl strncat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 140 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return strncat_s(_Dest, _Size, _Source, _Count); } }
#pragma warning(push)
#pragma warning(disable:6059)

__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strncat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
#pragma warning(pop)


#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl strncmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
#line 151 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _strnicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

 __declspec(dllimport) errno_t __cdecl strncpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 156 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return strncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl strncpy([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
 __declspec(dllimport) errno_t __cdecl _strnset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _strnset_s(_Dest, _Size, _Val, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const char *  __cdecl strpbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const char *  __cdecl strrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch);
__declspec(dllimport) char *  __cdecl _strrev([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t  __cdecl strspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const char *  __cdecl strstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _SubStr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char *  __cdecl strtok([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delim);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) char *  __cdecl strtok_s([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delim, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _Context);
#line 170 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
 __declspec(dllimport) errno_t __cdecl _strupr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size]) { return _strupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String);
 __declspec(dllimport) errno_t __cdecl _strupr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size], _locale_t _Locale) { return _strupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _strupr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) size_t  __cdecl strxfrm ([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char * _Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
 __declspec(dllimport) size_t  __cdecl _strxfrm_l([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char * _Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);


extern "C++" {


[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl strchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch)
	{ return (char*)strchr((const char*)_Str, _Ch); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl strpbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Control)
	{ return (char*)strpbrk((const char*)_Str, _Control); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl strrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch)
	{ return (char*)strrchr((const char*)_Str, _Ch); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl strstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _SubStr)
	{ return (char*)strstr((const char*)_Str, _SubStr); }
#line 192 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"


[returnvalue:SA_Post(MustCheck=SA_Yes)] inline void * __cdecl memchr([SA_Pre(Null=SA_Maybe,ValidBytes="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Pv, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
	{ return (void*)memchr((const void*)_Pv, _C, _N); }
#line 197 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
}
#line 199 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"






#line 206 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strdup" ". See online help for details.")) __declspec(dllimport) char * __cdecl strdup([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src);



#line 212 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strcmpi" ". See online help for details.")) __declspec(dllimport) int __cdecl strcmpi([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_stricmp" ". See online help for details.")) __declspec(dllimport) int __cdecl stricmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str2);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strlwr" ". See online help for details.")) __declspec(dllimport) char * __cdecl strlwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl strnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strnset" ". See online help for details.")) __declspec(dllimport) char * __cdecl strnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strrev" ". See online help for details.")) __declspec(dllimport) char * __cdecl strrev([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strset" ". See online help for details."))         char * __cdecl strset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_strupr" ". See online help for details.")) __declspec(dllimport) char * __cdecl strupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Str);

#line 224 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"









#line 234 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wcsdup([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str);



#line 240 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"


 __declspec(dllimport) errno_t __cdecl wcscat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src);
#line 244 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source) { return wcscat_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcscat([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const wchar_t * __cdecl wcschr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, wchar_t _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl wcscmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);

 __declspec(dllimport) errno_t __cdecl wcscpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src);
#line 251 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source) { return wcscpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcscpy([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl wcscspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl wcslen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl wcsnlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);

[returnvalue:SA_Post(MustCheck=SA_Yes)] static __inline size_t __cdecl wcsnlen_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount)
{
    return (_Src == 0) ? 0 : wcsnlen(_Src, _MaxCount);
}
#line 262 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

 __declspec(dllimport) errno_t __cdecl wcsncat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 265 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return wcsncat_s(_Dest, _Size, _Source, _Count); } }
#pragma warning(push)
#pragma warning(disable:6059)
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsncat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
#pragma warning(pop)
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl wcsncmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);

 __declspec(dllimport) errno_t __cdecl wcsncpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 274 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return wcsncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsncpy([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const wchar_t * __cdecl wcspbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const wchar_t * __cdecl wcsrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl wcsspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) const wchar_t * __cdecl wcsstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _SubStr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcstok([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Delim);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl wcstok_s([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Delim, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _Context);
#line 284 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcserror([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ErrNum);
 __declspec(dllimport) errno_t __cdecl _wcserror_s([SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ErrNum);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(wchar_t (&_Buffer)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Error) { return _wcserror_s(_Buffer, _Size, _Error); } }
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl __wcserror([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str);
 __declspec(dllimport) errno_t __cdecl __wcserror_s([SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buffer, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ErrMsg);
extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(wchar_t (&_Buffer)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ErrorMessage) { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsnicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) errno_t __cdecl _wcsnset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Dst)[_Size], wchar_t _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount) { return _wcsnset_s(_Dst, _Size, _Val, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Str, wchar_t _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(dllimport) wchar_t * __cdecl _wcsrev([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str);
 __declspec(dllimport) errno_t __cdecl _wcsset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Value);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Str)[_Size], wchar_t _Val) { return _wcsset_s(_Str, _Size, _Val); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Str, wchar_t _Val);

 __declspec(dllimport) errno_t __cdecl _wcslwr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_String)[_Size]) { return _wcslwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcslwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String);
 __declspec(dllimport) errno_t __cdecl _wcslwr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _wcslwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcslwr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) errno_t __cdecl _wcsupr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_String)[_Size]) { return _wcsupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String);
 __declspec(dllimport) errno_t __cdecl _wcsupr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _wcsupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wcsupr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) size_t __cdecl wcsxfrm([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] wchar_t * _Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
 __declspec(dllimport) size_t __cdecl _wcsxfrm_l([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] wchar_t * _Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl wcscoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcscoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsncoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsncoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsnicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wcsnicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);




extern "C++" {
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline wchar_t * __cdecl wcschr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_Str, wchar_t _Ch)
        {return ((wchar_t *)wcschr((const wchar_t *)_Str, _Ch)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline wchar_t * __cdecl wcspbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Control)
        {return ((wchar_t *)wcspbrk((const wchar_t *)_Str, _Control)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline wchar_t * __cdecl wcsrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch)
        {return ((wchar_t *)wcsrchr((const wchar_t *)_Str, _Ch)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline wchar_t * __cdecl wcsstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_SubStr)
        {return ((wchar_t *)wcsstr((const wchar_t *)_Str, _SubStr)); }
}
#line 340 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
#line 341 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"






#line 348 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsdup" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsdup([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str);



#line 354 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"





[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnicmp" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsnset" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsrev" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsrev([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsset" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str, wchar_t _Val);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcslwr" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcslwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsupr" ". See online help for details.")) __declspec(dllimport) wchar_t * __cdecl wcsupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_wcsicoll" ". See online help for details.")) __declspec(dllimport) int __cdecl wcsicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str2);

#line 369 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"


#line 372 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"



}
#line 377 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"

#line 379 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\string.h"
#line 850 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


extern "C" {
#line 854 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"















#line 870 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"
























































































































































































#line 1055 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


























































#line 1114 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"





















#line 1136 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"







#line 1144 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"













#line 1158 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"




























#line 1187 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"








































}   
#line 1229 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"














#pragma once
#line 17 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"







#pragma pack(push,8)
#line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"


extern "C" {
#line 35 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"
























#line 60 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsdup([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str);



#line 66 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbbtombc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbbtombc_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbbtype([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned char _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _CType);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbbtype_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned char _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _CType, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctombb([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctombb_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) int __cdecl _mbsbtype([SA_Pre(Null=SA_No,ValidBytes="_Pos")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Pos);
__declspec(dllimport) int __cdecl _mbsbtype_l([SA_Pre(Null=SA_No,ValidBytes="_Pos")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Pos, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbscat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbscat_s(unsigned char (&_Dst)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _DstSizeInBytes) { return _mbscat_s(_Dst, _Size, _DstSizeInBytes); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbscat([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source);
__declspec(dllimport) errno_t __cdecl _mbscat_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbscat_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbscat_s_l(_Dest, _Size, _Source, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbscat_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbscat_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbschr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbschr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbscmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbscmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbscoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbscoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbscpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbscpy_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source) { return _mbscpy_s(_Dest, _Size, _Source); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbscpy([SA_Pre(Null=SA_No,WritableElementsLength="_Source")] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source);
__declspec(dllimport) errno_t __cdecl _mbscpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbscpy_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbscpy_s(_Dest, _Size, _Source, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbscpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbscpy_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbscspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbscspn_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsdec([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos-_Start +1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Start, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsdec_l([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos-_Start+1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Start, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsinc([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Ptr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsinc_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Ptr, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbslen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbslen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnlen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbslwr_s([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbslwr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes,WritableBytesConst=_Size)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_String)[_Size]) { return _mbslwr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbslwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String);
__declspec(dllimport) errno_t __cdecl _mbslwr_s_l([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbslwr_s_l(unsigned char (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbslwr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbslwr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsnbcat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbcat_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _mbsnbcat_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbcat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
__declspec(dllimport) errno_t __cdecl _mbsnbcat_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbcat_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsnbcat_s_l(_Dest, _Size, _Source, _Count, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbcat_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbcat_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbcmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbcmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbcoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbcoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnbcnt([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnbcnt_l([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsnbcpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbcpy_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _mbsnbcpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbcpy([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
__declspec(dllimport) errno_t __cdecl _mbsnbcpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbcpy_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsnbcpy_s_l(_Dest, _Size, _Source, _Count, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbcpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbcpy_l([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnbicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsnbset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount) { return _mbsnbset_s(_Dest, _Size, _Val, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(dllimport) errno_t __cdecl _mbsnbset_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnbset_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsnbset_s_l(_Dest, _Size, _Val, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnbset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnbset_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsncat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsncat_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _mbsncat_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsncat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
__declspec(dllimport) errno_t __cdecl _mbsncat_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsncat_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsncat_s_l(_Dest, _Size, _Source, _Count, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsncat_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsncat_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnccnt([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsnccnt_l([SA_Pre(Null=SA_No,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsncmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsncmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsncoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsncoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsncpy_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsncpy_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _mbsncpy_s(_Dest, _Size, _Source, _Count); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsncpy([SA_Pre(Null=SA_No)] [SA_Pre(Null=SA_No,ElementSizeConst=2,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
__declspec(dllimport) errno_t __cdecl _mbsncpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsncpy_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsncpy_s_l(_Dest, _Size, _Source, _Count, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsncpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsncpy_l([SA_Pre(Null=SA_No,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] unsigned char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbsnextc ([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbsnextc_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _mbsnicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsninc([SA_Pre(Null=SA_No,ValidBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsninc_l([SA_Pre(Null=SA_No,ValidBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsnset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount) { return _mbsnset_s(_Dest, _Size, _Val, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
__declspec(dllimport) errno_t __cdecl _mbsnset_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsnset_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsnset_s_l(_Dest, _Size, _Val, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsnset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsnset_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbspbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbspbrk_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbsrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbsrchr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) unsigned char * __cdecl _mbsrev([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Str);
__declspec(dllimport) unsigned char * __cdecl _mbsrev_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val) { return _mbsset_s(_Dest, _Size, _Val); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val);
__declspec(dllimport) errno_t __cdecl _mbsset_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsset_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsset_s_l(_Dest, _Size, _Val, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsset_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsspn([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbsspn_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Control, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsspnp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str2);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbsspnp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbsstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Substr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  const unsigned char * __cdecl _mbsstr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Substr, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) unsigned char * __cdecl _mbstok([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Delim);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstok_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) unsigned char * __cdecl _mbstok_l([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Delim, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbstok_s([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Delim, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char ** _Context);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned char * __cdecl _mbstok_s_l([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Delim, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char ** _Context, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbsupr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsupr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes,WritableBytesConst=_Size)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] unsigned char (&_String)[_Size]) { return _mbsupr_s(_String, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String);
__declspec(dllimport) errno_t __cdecl _mbsupr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbsupr_s_l(unsigned char (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbsupr_s_l(_String, _Size, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) unsigned char * __cdecl _mbsupr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbclen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbclen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbccpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) void __cdecl _mbccpy([SA_Pre(Null=SA_No,WritableBytesConst=2)] [SA_Pre(Deref=1,Valid=SA_No)] unsigned char * _Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbccpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) void __cdecl _mbccpy_l([SA_Pre(Null=SA_No,WritableBytesConst=2)] [SA_Pre(Deref=1,Valid=SA_No)] unsigned char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Src, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) errno_t __cdecl _mbccpy_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbccpy_s(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source) { return _mbccpy_s(_Dest, _Size, _PCopied, _Source); } }
__declspec(dllimport) errno_t __cdecl _mbccpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] unsigned char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Src, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbccpy_s_l(unsigned char (&_Dest)[_Size], [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbccpy_s_l(_Dest, _Size, _PCopied, _Source, _Locale); } }





extern "C++" {
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbschr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Char)
{
    return ((unsigned char *)_mbschr((const unsigned char *)_String, _Char)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbschr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Char, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return ((unsigned char *)_mbschr_l((const unsigned char *)_String, _Char, _Locale)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbspbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_CharSet)
{
    return ((unsigned char *)_mbspbrk((const unsigned char *)_String, _CharSet)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbspbrk_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_CharSet, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return ((unsigned char *)_mbspbrk_l((const unsigned char *)_String, _CharSet, _Locale)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbsrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Char)
{
    return ((unsigned char *)_mbsrchr((const unsigned char *)_String, _Char)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbsrchr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Char, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return ((unsigned char *)_mbsrchr_l((const unsigned char *)_String, _Char, _Locale)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbsstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Match)
{
    return ((unsigned char *)_mbsstr((const unsigned char *)_String, _Match)); 
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] inline unsigned char * __cdecl _mbsstr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_String, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char *_Match, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return ((unsigned char *)_mbsstr_l((const unsigned char *)_String, _Match, _Locale)); 
}
}
#line 257 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"
#line 258 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"



[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcalnum([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcalnum_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcalpha([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcalpha_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcdigit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcdigit_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcgraph([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcgraph_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbclegal([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbclegal_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbclower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbclower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcprint([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcprint_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcpunct([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcpunct_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcspace([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcspace_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctolower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctolower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctoupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctoupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);


#line 289 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbblead([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbblead_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbbtrail([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbbtrail_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbslead([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos - _Str+1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbslead_l([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos - _Str+1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbstrail([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos - _Str+1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbstrail_l([SA_Pre(Null=SA_No,ValidElements="\n@""_Pos - _Str+1")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const unsigned char * _Str, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const unsigned char * _Pos, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

#line 301 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"



[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbchira([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbchira_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbckata([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbckata_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcsymbol([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcsymbol_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl0([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl0_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl1([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl1_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl2([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ismbcl2_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbcjistojms([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbcjistojms_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbcjmstojis([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbcjmstojis_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctohira([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctohira_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctokata([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned int __cdecl _mbctokata_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Ch, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);



}
#line 329 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"


#pragma pack(pop)
#line 333 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"

#line 335 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\mbstring.h"

#line 1231 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


extern "C" {
#line 1235 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"



typedef char            _TCHAR;
typedef signed char     _TSCHAR;
typedef unsigned char   _TUCHAR;
typedef unsigned char   _TXCHAR;
typedef unsigned int    _TINT;

#line 1245 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"



typedef char            TCHAR;
#line 1250 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 1252 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"
















































































































































































































#line 1461 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"













__inline const char * _tcschr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _c) {return (const char *)_mbschr((const unsigned char *)_s1,_c);}
__inline size_t _tcscspn([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return _mbscspn((const unsigned char *)_s1,(const unsigned char *)_s2);}

 __inline errno_t _tcsncat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) 
{
    return _mbsnbcat_s((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source,_Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsncat_s(_Dest, _Size, _Source, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbcat((unsigned char *)_Dst,(const unsigned char *)_Source,_Count);
#pragma warning(pop)
}



 __inline errno_t _tcsncat_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsnbcat_s_l((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source,_Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncat_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsncat_s_l(_Dest, _Size, _Source, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncat_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncat_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbcat_l((unsigned char *)_Dst,(const unsigned char *)_Source,_Count, _Locale);
#pragma warning(pop)
}



 __inline errno_t _tcsncpy_s([SA_Pre(Null=SA_No,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) 
{
    return _mbsnbcpy_s((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source,_Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncpy_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsncpy_s(_Dest, _Size, _Source, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncpy(char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbcpy((unsigned char *)_Dst,(const unsigned char *)_Source,_Count);
#pragma warning(pop)
}



 __inline errno_t _tcsncpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsnbcpy_s_l((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source,_Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncpy_s_l([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsncpy_s_l(_Dest, _Size, _Source, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncpy_l([SA_Pre(Null=SA_No,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbcpy_l((unsigned char *)_Dst,(const unsigned char *)_Source,_Count, _Locale);
#pragma warning(pop)
}



[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline const char * _tcspbrk([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return (const char *)_mbspbrk((const unsigned char *)_s1,(const unsigned char *)_s2);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline const char * _tcsrchr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _c) {return (const char *)_mbsrchr((const unsigned char *)_s1,_c);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcsspn([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return _mbsspn((const unsigned char *)_s1,(const unsigned char *)_s2);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline const char * _tcsstr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return (const char *)_mbsstr((const unsigned char *)_s1,(const unsigned char *)_s2);}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char *  _tcstok([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String,[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delimiters) 
{
#pragma warning(push)
#pragma warning(disable:4996)
	return (char * )_mbstok((unsigned char *)_String,(const unsigned char *)_Delimiters);
#pragma warning(pop)
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char *  _tcstok_s([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String,[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delimiters, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char **_Current_position) 
{
	return (char * )_mbstok_s((unsigned char *)_String,(const unsigned char *)_Delimiters, (unsigned char **)_Current_position);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcstok_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char *  _tcstok_l([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String,[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delimiters, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
#pragma warning(push)
#pragma warning(disable:4996)
	return (char * )_mbstok_l((unsigned char *)_String,(const unsigned char *)_Delimiters, _Locale);
#pragma warning(pop)
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char *  _tcstok_s_l([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String,[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Delimiters, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char **_Current_position, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
	return (char * )_mbstok_s_l((unsigned char *)_String,(const unsigned char *)_Delimiters, (unsigned char **)_Current_position, _Locale);
}

 __inline errno_t _tcsnset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value , [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsnbset_s((unsigned char *)_Dst, _SizeInBytes, _Value, _Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsnset_s(_Dest, _Size, _Value, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbset((unsigned char *)_Dst, _Value, _Count);
#pragma warning(pop)
}



 __inline errno_t _tcsnset_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value , [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnbset_s_l((unsigned char *)_Dst, _SizeInBytes, _Value, _Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnset_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsnset_s_l(_Dest, _Size, _Value, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnset_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnbset_l((unsigned char *)_Dst, _Value, _Count, _Locale);
#pragma warning(pop)
}



__inline char * _tcsrev([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _s1) {return (char *)_mbsrev((unsigned char *)_s1);}

 __inline errno_t _tcsset_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value)
{
    return _mbsset_s((unsigned char *)_Dst, _SizeInBytes, _Value);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsset_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value) { return _tcsset_s(_Dest, _Size, _Value); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsset([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsset((unsigned char *)_Dst, _Value);
#pragma warning(pop)
}



 __inline errno_t _tcsset_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsset_s_l((unsigned char *)_Dst, _SizeInBytes, _Value, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsset_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsset_s_l(_Dest, _Size, _Value, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsset_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsset_l((unsigned char *)_Dst, _Value, _Locale);
#pragma warning(pop)
}



[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcscmp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return _mbscmp((const unsigned char *)_s1,(const unsigned char *)_s2);}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2) 
{
    return _mbsicmp((const unsigned char *)_String1,(const unsigned char *)_String2);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsicmp_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnccmp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _n) {return _mbsncmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}
__inline int _tcsncmp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _n) {return _mbsnbcmp((const unsigned char *)_s1,(const unsigned char *)_s2,_n);}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Char_count)
{
    return _mbsnicmp((const unsigned char *)_String1,(const unsigned char *)_String2,_Char_count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Char_count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnicmp_l((const unsigned char *)_String1,(const unsigned char *)_String2,_Char_count, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnicmp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Char_count) 
{
    return _mbsnbicmp((const unsigned char *)_String1,(const unsigned char *)_String2,_Char_count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnicmp_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Char_count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsnbicmp_l((const unsigned char *)_String1,(const unsigned char *)_String2,_Char_count, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcscoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2)
{
    return _mbscoll((const unsigned char *)_String1,(const unsigned char *)_String2);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcscoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbscoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2)
{
    return _mbsicoll((const unsigned char *)_String1,(const unsigned char *)_String2);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsicoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnccoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsncoll((const unsigned char *)_String1,(const unsigned char *)_String2, _Count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnccoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsncoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Count, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsnbcoll((const unsigned char *)_String1,(const unsigned char *)_String2, _Count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnbcoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Count, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsnicoll((const unsigned char *)_String1,(const unsigned char *)_String2, _Count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsncicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnicoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Count, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnicoll([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsnbicoll((const unsigned char *)_String1,(const unsigned char *)_String2, _Count);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline int _tcsnicoll_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String1, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnbicoll_l((const unsigned char *)_String1,(const unsigned char *)_String2, _Count, _Locale);
}


[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcsclen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String) 
{
    return _mbslen((const unsigned char *)_String);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcscnlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Maximum) 
{
    return _mbsnlen((const unsigned char *)_String, _Maximum);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcsclen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbslen_l((const unsigned char *)_String, _Locale);
}

[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcscnlen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Maximum, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsnlen_l((const unsigned char *)_String, _Maximum, _Locale);
}

 __inline errno_t _tcsnccat_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) 
{
    return _mbsncat_s((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source, _Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnccat_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsnccat_s(_Dest, _Size, _Source, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnccat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnccat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsncat((unsigned char *)_Dst,(const unsigned char *)_Source, _Count);
#pragma warning(pop)
}



 __inline errno_t _tcsnccat_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsncat_s_l((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source, _Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnccat_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsnccat_s_l(_Dest, _Size, _Source, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnccat_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnccat_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsncat_l((unsigned char *)_Dst,(const unsigned char *)_Source, _Count, _Locale);
#pragma warning(pop)
}



 __inline errno_t _tcsnccpy_s([SA_Pre(Null=SA_No,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) 
{
    return _mbsncpy_s((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source, _Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnccpy_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsnccpy_s(_Dest, _Size, _Source, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnccpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnccpy([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsncpy((unsigned char *)_Dst,(const unsigned char *)_Source, _Count);
#pragma warning(pop)
}



 __inline errno_t _tcsnccpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_Destination_size_chars")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Destination_size_chars, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsncpy_s_l((unsigned char *)_Destination, _Destination_size_chars, (const unsigned char *)_Source, _Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsnccpy_s_l([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsnccpy_s_l(_Dest, _Size, _Source, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsnccpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsnccpy_l([SA_Pre(Null=SA_No,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Maybe)] char *_Dst, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsncpy_l((unsigned char *)_Dst,(const unsigned char *)_Source, _Count, _Locale);
#pragma warning(pop)
}



 __inline errno_t _tcsncset_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
    return _mbsnset_s((unsigned char *)_Destination, _SizeInBytes, _Value, _Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncset_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) { return _tcsncset_s(_Dest, _Size, _Value, _Count); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncset([SA_Pre(Null=SA_No,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnset((unsigned char *)_Dst, _Value, _Count);
#pragma warning(pop)
}



 __inline errno_t _tcsncset_s_l([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
    return _mbsnset_s_l((unsigned char *)_Destination, _SizeInBytes, _Value, _Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsncset_s_l(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsncset_s_l(_Dest, _Size, _Value, _Count, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsncset_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsncset_l([SA_Pre(Null=SA_No,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsnset_l((unsigned char *)_Dst, _Value, _Count, _Locale);
#pragma warning(pop)
}





[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char * _tcsdec([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return (char *)_mbsdec((const unsigned char *)_s1,(const unsigned char *)_s2);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char * _tcsinc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1) {return (char *)_mbsinc((const unsigned char *)_s1);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcsnbcnt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _n) {return _mbsnbcnt((const unsigned char *)_s1,_n);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tcsnccnt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _n) {return _mbsnccnt((const unsigned char *)_s1,_n);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char * _tcsninc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _n) {return (char *)_mbsninc((const unsigned char *)_s1,_n);}
[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline char * _tcsspnp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s1,[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char * _s2) {return (char *)_mbsspnp((const unsigned char *)_s1,(const unsigned char *)_s2);}

 __inline errno_t _tcslwr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String, size_t _SizeInBytes) 
{
    return _mbslwr_s((unsigned char *)_String, _SizeInBytes);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcslwr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size]) { return _tcslwr_s(_String, _Size); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcslwr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbslwr((unsigned char *)_String);
#pragma warning(pop)
}



 __inline errno_t _tcslwr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbslwr_s_l((unsigned char *)_String, _SizeInBytes, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcslwr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcslwr_s_l(_String, _Size, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcslwr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbslwr_l((unsigned char *)_String, _Locale);
#pragma warning(pop)
}



 __inline errno_t _tcsupr_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count) 
{
    return _mbsupr_s((unsigned char *)_String, _Count);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsupr_s([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size]) { return _tcsupr_s(_String, _Size); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsupr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsupr((unsigned char *)_String);
#pragma warning(pop)
}



 __inline errno_t _tcsupr_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_Count")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbsupr_s_l((unsigned char *)_String, _Count, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tcsupr_s_l([SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_String)[_Size], [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tcsupr_s_l(_String, _Size, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline char * __cdecl _tcsupr_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale)
{
#pragma warning(push)
#pragma warning(disable:4996)
    return (char *)_mbsupr_l((unsigned char *)_String, _Locale);
#pragma warning(pop)
}



[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline size_t _tclen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _s1) {return _mbclen((const unsigned char *)_s1);}

 __inline errno_t _tccpy_s([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int *_PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source) 
{
    return _mbccpy_s((unsigned char *)_Destination, _SizeInBytes, _PCopied, (const unsigned char *)_Source);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tccpy_s([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source) { return _tccpy_s(_Dest, _Size, _PCopied, _Source); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tccpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline void _tccpy([SA_Pre(Null=SA_No,WritableBytesConst=2)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source) 
{
#pragma warning(push)
#pragma warning(disable:4996)
    _mbccpy((unsigned char *)_Destination, (const unsigned char *)_Source);
#pragma warning(pop)
}

 __inline errno_t _tccpy_s_l([SA_Pre(Null=SA_No,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int *_PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
    return _mbccpy_s_l((unsigned char *)_Destination, _SizeInBytes, _PCopied, (const unsigned char *)_Source, _Locale);
}

extern "C++" { template <size_t _Size> inline errno_t __cdecl _tccpy_s_l([SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PCopied, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _tccpy_s_l(_Dest, _Size, _PCopied, _Source, _Locale); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_tccpy_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __inline void _tccpy_l([SA_Pre(Null=SA_No,WritableBytesConst=2)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Destination, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) 
{
#pragma warning(push)
#pragma warning(disable:4996)
    _mbccpy_l((unsigned char *)_Destination,( const unsigned char *)_Source, _Locale);
#pragma warning(pop)
}


[returnvalue:SA_Post(MustCheck=SA_Yes)] __inline unsigned int _tcsnextc([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _s1)
{
    unsigned int _n=0; 
    if (_ismbblead((unsigned int)*(unsigned char *)_s1)) 
    {
        


        if(_s1[1]!='\0')
        {
            _n=((unsigned int)*(unsigned char *)_s1)<<8; 
            _s1++;
        }
    } 
    _n+=(unsigned int)*(unsigned char *)_s1; 
    
    return(_n);
}

#line 1994 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"




extern "C++" {
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl _tcschr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_S, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _C)
        {return ((char *)_tcschr((const char *)_S, _C)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl _tcspbrk([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_S, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_P)
        {return ((char *)_tcspbrk((const char *)_S, _P)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl _tcsrchr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_S, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _C)
        {return ((char *)_tcsrchr((const char *)_S, _C)); }
[returnvalue:SA_Post(MustCheck=SA_Yes)] inline char * __cdecl _tcsstr([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_S, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_P)
        {return ((char *)_tcsstr((const char *)_S, _P)); }
}
#line 2009 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"
#line 2010 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 2012 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

















































































































































































































































































































































































#line 2382 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


#line 2385 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"










}   
#line 2397 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"

#line 2399 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\tchar.h"


#line 12 "h:\\myproject\\myutility\\windowsexercises\\pipe\\stdafx.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"

#pragma once


#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


#pragma pack(push,8)
#line 11 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"









































#line 53 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

#line 55 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
#line 56 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

		


		




		

 
  

 

#line 73 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 
  
 #line 77 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 
  
 #line 81 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
#line 85 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
#line 89 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
#line 93 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"



#line 97 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


	
		
	

#line 104 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"







#line 112 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"













#line 126 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"




#line 131 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"




#line 136 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

#line 138 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
#line 139 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"



#line 143 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"











#line 155 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"








#line 164 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"






 



#line 175 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 





#line 183 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 




#line 190 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 
 

 #line 195 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 









 










 









 

 









 









 




 





 
 

 
















#line 281 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"











 

 

 

 










 










 










 










 









#line 353 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"











#line 365 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"













#pragma once












#pragma comment(lib,"msvcprtd")


#line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"








#line 40 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"






#line 47 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"










#pragma comment(linker,"/manifestdependency:\"type='win32' "            \
        "name='" "Microsoft.VC90" ".DebugCRT' "         \
        "version='" "9.0.21022.8" "' "                           \
        "processorArchitecture='x86' "                                  \
        "publicKeyToken='" "1fc8b3b9a1e18e3b" "'\"")






#line 69 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"

#line 71 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"





































#line 109 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"







#line 117 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"

#line 119 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"

#line 121 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"

#line 123 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\use_ansi.h"
#line 367 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
#line 371 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"




#line 376 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 











 
  

#line 394 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
   
  #line 396 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
 #line 397 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"






 











 

   


#line 421 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
    
   #line 423 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 #line 425 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
  

#line 431 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
   
  #line 433 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
 #line 434 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
  

#line 440 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
   
  #line 442 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
 #line 443 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


 
  

#line 449 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
   
  #line 451 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
 #line 452 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 
  
 #line 456 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 
   


     
   #line 463 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
 #line 464 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


    
#line 468 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"


  



		

 
  
  
  




  
  
  

  







   
   
   
  #line 500 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

  
  
  
  

 












#line 520 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

 

 
namespace std {
typedef bool _Bool;
}
 #line 528 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

		





		






typedef __int64 _Longlong;
typedef unsigned __int64 _ULonglong;

		


 







		
		






 
namespace std {
		


#pragma warning(push)
#pragma warning(disable:4412)
class __declspec(dllimport) _Lockit
	{	
public:
  

    













#line 591 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
    explicit __thiscall _Lockit();	
	explicit __thiscall _Lockit(int);	
	__thiscall ~_Lockit();	
    #line 595 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

    static  void __cdecl _Lockit_ctor(int);
    static  void __cdecl _Lockit_dtor(int);

private:
    static  void __cdecl _Lockit_ctor(_Lockit *);
    static  void __cdecl _Lockit_ctor(_Lockit *, int);
    static  void __cdecl _Lockit_dtor(_Lockit *);

	 _Lockit(const _Lockit&);				
	_Lockit&  operator=(const _Lockit&);	

	int _Locktype;

  












#line 623 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

	};



























































































#line 717 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

class __declspec(dllimport) _Mutex
	{	
public:

  
    
    
















#line 742 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
    __thiscall _Mutex();
	__thiscall ~_Mutex();
	void __thiscall _Lock();
	void __thiscall _Unlock();
    #line 747 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

private:
    static  void __cdecl _Mutex_ctor(_Mutex *);
    static  void __cdecl _Mutex_dtor(_Mutex *);
    static  void __cdecl _Mutex_Lock(_Mutex *);
    static  void __cdecl _Mutex_Unlock(_Mutex *);

	 _Mutex(const _Mutex&);				
	_Mutex&  operator=(const _Mutex&);	
	void *_Mtx;

  







#line 767 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

	};

class __declspec(dllimport) _Init_locks
	{	
public:

 
    
    








#line 786 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"
    __thiscall _Init_locks();
	__thiscall ~_Init_locks();
    #line 789 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

private:
    static  void __cdecl _Init_locks_ctor(_Init_locks *);
    static  void __cdecl _Init_locks_dtor(_Init_locks *);

 







#line 803 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

	};
#pragma warning(pop)
}
 #line 808 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"





		

__declspec(dllimport) void __cdecl _Atexit(void (__cdecl *)(void));

typedef int _Mbstatet;






  
  
 #pragma pack(pop)
#line 828 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"

#line 830 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\yvals.h"






#line 6 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"







 #line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
















#pragma once
#line 19 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 24 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 20 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"
















#line 37 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"









































#line 79 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"






#line 86 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"
#line 87 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"







#line 95 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"
#line 96 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"
































#line 129 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\limits.h"
#line 25 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"






#pragma pack(push,8)
#line 33 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


extern "C" {
#line 37 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"



















typedef int (__cdecl * _onexit_t)(void);



#line 61 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"



#line 65 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"




#line 70 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


#line 73 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"






typedef struct _div_t {
        int quot;
        int rem;
} div_t;

typedef struct _ldiv_t {
        long quot;
        long rem;
} ldiv_t;


#line 91 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"










#pragma pack(4)
typedef struct {
    unsigned char ld[10];
} _LDOUBLE;
#pragma pack()













#line 120 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

typedef struct {
        double x;
} _CRT_DOUBLE;

typedef struct {
    float f;
} _CRT_FLOAT;





typedef struct {
        


        long double x;
} _LONGDOUBLE;



#pragma pack(4)
typedef struct {
    unsigned char ld12[12];
} _LDBL12;
#pragma pack()


#line 150 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"














#line 165 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

__declspec(dllimport) extern int __mb_cur_max;



#line 171 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
__declspec(dllimport) int __cdecl ___mb_cur_max_func(void);
__declspec(dllimport) int __cdecl ___mb_cur_max_l_func(_locale_t);
#line 174 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"





































typedef void (__cdecl *_purecall_handler)(void); 


__declspec(dllimport) _purecall_handler __cdecl _set_purecall_handler([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _purecall_handler _Handler);
__declspec(dllimport) _purecall_handler __cdecl _get_purecall_handler();
#line 217 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


extern "C++"
{




#line 226 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"







#line 234 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
}
#line 236 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"



typedef void (__cdecl *_invalid_parameter_handler)(const wchar_t *, const wchar_t *, const wchar_t *, unsigned int, uintptr_t); 


__declspec(dllimport) _invalid_parameter_handler __cdecl _set_invalid_parameter_handler([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _invalid_parameter_handler _Handler);
__declspec(dllimport) _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);
#line 245 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


extern "C++"
{




#line 254 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"






#line 261 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
}
#line 263 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"




__declspec(dllimport) extern int * __cdecl _errno(void);


errno_t __cdecl _set_errno([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value);
errno_t __cdecl _get_errno([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _Value);
#line 273 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

__declspec(dllimport) unsigned long * __cdecl __doserrno(void);


errno_t __cdecl _set_doserrno([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Value);
errno_t __cdecl _get_doserrno([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] unsigned long * _Value);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char ** __cdecl __sys_errlist(void);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int * __cdecl __sys_nerr(void);




__declspec(dllimport) int *          __cdecl __p___argc(void);
__declspec(dllimport) char ***       __cdecl __p___argv(void);
__declspec(dllimport) wchar_t ***    __cdecl __p___wargv(void);
__declspec(dllimport) char ***       __cdecl __p__environ(void);
__declspec(dllimport) wchar_t ***    __cdecl __p__wenviron(void);
__declspec(dllimport) char **        __cdecl __p__pgmptr(void);
__declspec(dllimport) wchar_t **     __cdecl __p__wpgmptr(void);


#line 299 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


__declspec(dllimport) extern int __argc;          
__declspec(dllimport) extern char ** __argv;      
__declspec(dllimport) extern wchar_t ** __wargv;  







#line 312 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"





__declspec(dllimport) extern char ** _environ;    
__declspec(dllimport) extern wchar_t ** _wenviron;    
#line 320 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_pgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern char * _pgmptr;      
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_wpgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern wchar_t * _wpgmptr;  














#line 338 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

errno_t __cdecl _get_pgmptr([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _Value);
errno_t __cdecl _get_wpgmptr([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Pre(Deref=2,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _Value);



__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_fmode" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) extern int _fmode;          



#line 349 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

__declspec(dllimport) errno_t __cdecl _set_fmode([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode);
__declspec(dllimport) errno_t __cdecl _get_fmode([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PMode);





#line 358 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
extern "C++"
{
template <typename _CountofType, size_t _SizeOfArray>
char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

}
#line 365 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
#line 366 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"





__declspec(dllimport) __declspec(noreturn) void __cdecl exit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl _exit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Code);
__declspec(dllimport) void __cdecl abort(void);
#line 375 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

__declspec(dllimport) unsigned int __cdecl _set_abort_behavior([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Flags, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Mask);



        int     __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _X);
        long    __cdecl labs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _X);
#line 383 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

        __int64    __cdecl _abs64(__int64);













#line 399 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"












#line 412 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
        int    __cdecl atexit(void (__cdecl *)(void));
#line 414 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double  __cdecl atof([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_String);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double  __cdecl _atof_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
#line 419 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)  int    __cdecl atoi([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl _atoi_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl atol([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl _atol_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);



[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) void * __cdecl bsearch_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const void * _Key, [SA_Pre(Null=SA_No,ValidBytes="\n@""_NumOfElements * _SizeOfElements")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Base, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _NumOfElements, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void * _Context);
#line 430 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) void * __cdecl bsearch([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const void * _Key, [SA_Pre(Null=SA_No,ValidBytes="\n@""_NumOfElements * _SizeOfElements")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Base, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int (__cdecl * _PtFuncCompare)(const void *, const void *));


__declspec(dllimport) void __cdecl qsort_s([SA_Pre(Null=SA_No,WritableBytes="\n@""_NumOfElements* _SizeOfElements")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Base, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _NumOfElements, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int (__cdecl * _PtFuncCompare)(void *, const void *, const void *), void *_Context);
#line 439 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
__declspec(dllimport) void __cdecl qsort([SA_Pre(Null=SA_No,WritableBytes="\n@""_NumOfElements * _SizeOfElements")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Base, 
	[SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int (__cdecl * _PtFuncCompare)(const void *, const void *));
#line 443 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned short __cdecl _byteswap_ushort([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned short _Short);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned long  __cdecl _byteswap_ulong ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Long);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned __int64 __cdecl _byteswap_uint64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Int64);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) div_t  __cdecl div([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Numerator, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Denominator);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_dupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl getenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _VarName);

 __declspec(dllimport) errno_t __cdecl getenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _ReturnSize, [SA_Pre(Null=SA_No,WritableElements="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _DstSize, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _VarName);
#line 451 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
extern "C++" { template <size_t _Size> inline errno_t __cdecl getenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _ReturnSize, char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _VarName) { return getenv_s(_ReturnSize, _Dest, _Size, _VarName); } }



#line 456 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) errno_t __cdecl _dupenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes,WritableElements="*_PBufferSizeInBytes")] [SA_Post(Deref=2,Valid=SA_Yes)] char **_PBuffer, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PBufferSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _VarName);



#line 462 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) errno_t __cdecl _itoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value, [SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _itoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value, char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _itoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _itoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
 __declspec(dllimport) errno_t __cdecl _i64toa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Val, [SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _i64toa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
 __declspec(dllimport) errno_t __cdecl _ui64toa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ui64toa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _atoi64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _atoi64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _strtoi64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64 __cdecl _strtoi64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned __int64 __cdecl _strtoui64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned __int64 __cdecl _strtoui64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _String, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int  _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) ldiv_t __cdecl ldiv([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Numerator, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Denominator);

extern "C++"
{
    inline ldiv_t  div([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _A1, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _A2)
    {
        return ldiv(_A1, _A2);
    }
}
#line 486 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
 __declspec(dllimport) errno_t __cdecl _ltoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Val, [SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Value, char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _ltoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _ltoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl mblen([SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl _mblen_l([SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbstrlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbstrlen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbstrnlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t __cdecl _mbstrnlen_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
__declspec(dllimport) int    __cdecl mbtowc([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstCh, [SA_Pre(Null=SA_Maybe,ValidBytes="_SrcSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _SrcCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SrcSizeInBytes);
__declspec(dllimport) int    __cdecl _mbtowc_l([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstCh, [SA_Pre(Null=SA_Maybe,ValidBytes="_SrcSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _SrcCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SrcSizeInBytes, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) errno_t __cdecl mbstowcs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="*_PtNumOfCharConverted")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _SrcBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount );
extern "C++" { template <size_t _Size> inline errno_t __cdecl mbstowcs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount) { return mbstowcs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbstowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl mbstowcs([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);

 __declspec(dllimport) errno_t __cdecl _mbstowcs_s_l([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="*_PtNumOfCharConverted")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,ValidElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _SrcBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbstowcs_s_l([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _mbstowcs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstowcs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl _mbstowcs_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl rand(void);


#line 509 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) int    __cdecl _set_error_mode([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode);

__declspec(dllimport) void   __cdecl srand([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Seed);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl strtod([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _strtod_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl strtol([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix );
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl _strtol_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char **_EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned long __cdecl strtoul([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned long __cdecl _strtoul_l(const char * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] char **_EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);


__declspec(dllimport) int __cdecl system([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Command);
#line 523 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
 __declspec(dllimport) errno_t __cdecl _ultoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Val, [SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultoa_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Value, char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _ultoa_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl _ultoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "wctomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int    __cdecl wctomb([SA_Pre(Null=SA_Maybe,WritableBytesConst=5)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _MbCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _WCh);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctomb_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) int    __cdecl _wctomb_l([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _MbCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _WCh, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

 __declspec(dllimport) errno_t __cdecl wctomb_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _SizeConverted, [SA_Pre(Null=SA_Maybe,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="*_SizeConverted")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _MbCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _WCh);
#line 531 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
 __declspec(dllimport) errno_t __cdecl _wctomb_s_l([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _SizeConverted, [SA_Pre(Null=SA_Maybe,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _MbCh, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _WCh, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
 __declspec(dllimport) errno_t __cdecl wcstombs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="*_PtNumOfCharConverted")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCountInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcstombs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount) { return wcstombs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl wcstombs([SA_Pre(Null=SA_Maybe,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount);
 __declspec(dllimport) errno_t __cdecl _wcstombs_s_l([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableBytes="_DstSizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="*_PtNumOfCharConverted")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCountInBytes, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcstombs_s_l([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PtNumOfCharConverted, [SA_Pre(Null=SA_Maybe,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale) { return _wcstombs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcstombs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl _wcstombs_l([SA_Pre(Null=SA_No,WritableElements="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Source, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _MaxCount, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

























#line 564 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


































#line 599 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_NumOfElements* _SizeOfElements")] __declspec(dllimport)  __declspec(noalias) __declspec(restrict)    void * __cdecl calloc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements);
__declspec(dllimport)                     __declspec(noalias)                                                                             void   __cdecl free([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport)  __declspec(noalias) __declspec(restrict)                              void * __cdecl malloc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                           void * __cdecl realloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_Count*_Size")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                       void * __cdecl _recalloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
__declspec(dllimport)                     __declspec(noalias)                                                                             void   __cdecl _aligned_free([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_malloc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_offset_malloc([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_realloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_Count*_Size")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                       void * __cdecl _aligned_recalloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                              void * __cdecl _aligned_offset_realloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_Count*_Size")] __declspec(dllimport) __declspec(noalias) __declspec(restrict)                       void * __cdecl _aligned_offset_recalloc([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport)                                                  size_t __cdecl _aligned_msize([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset);


















#line 631 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

#line 633 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"





 __declspec(dllimport) errno_t __cdecl _itow_s ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _itow_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value, wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _itow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _itow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
 __declspec(dllimport) errno_t __cdecl _ltow_s ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Val, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltow_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Value, wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _ltow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _ltow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
 __declspec(dllimport) errno_t __cdecl _ultow_s ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Val, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultow_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Value, wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix) { return _ultow_s(_Value, _Dest, _Size, _Radix); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _ultow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Value, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl wcstod([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _wcstod_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl wcstol([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long   __cdecl _wcstol_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t **_EndPtr, int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned long __cdecl wcstoul([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned long __cdecl _wcstoul_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t **_EndPtr, int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wdupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _wgetenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _VarName);
 __declspec(dllimport) errno_t __cdecl _wgetenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _ReturnSize, [SA_Pre(Null=SA_No,WritableElements="_DstSizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DstSizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _VarName);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wgetenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _ReturnSize, wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _VarName) { return _wgetenv_s(_ReturnSize, _Dest, _Size, _VarName); } }




#line 661 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) errno_t __cdecl _wdupenv_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes,WritableElements="*_BufferSizeInWords")] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t **_Buffer, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t *_BufferSizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_VarName);



#line 667 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"



__declspec(dllimport) int __cdecl _wsystem([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Command);
#line 672 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _wtof([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _wtof_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wtoi([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wtoi_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long __cdecl _wtol([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) long __cdecl _wtol_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

 __declspec(dllimport) errno_t __cdecl _i64tow_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Val, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _i64tow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
 __declspec(dllimport) errno_t __cdecl _ui64tow_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) wchar_t * __cdecl _ui64tow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64   __cdecl _wtoi64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64   __cdecl _wtoi64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64   __cdecl _wcstoi64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __int64   __cdecl _wcstoi64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned __int64  __cdecl _wcstoui64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) unsigned __int64  __cdecl _wcstoui64_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_Str , [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _EndPtr, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);


#line 692 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"














#line 707 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) char * __cdecl _fullpath([SA_Pre(Null=SA_Maybe,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _FullPath, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Path, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes);





#line 715 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) errno_t __cdecl _ecvt_s([SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDights, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _ecvt_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign) { return _ecvt_s(_Dest, _Size, _Value, _NumOfDigits, _PtDec, _PtSign); } }
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _ecvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
 __declspec(dllimport) errno_t __cdecl _fcvt_s([SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _fcvt_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign) { return _fcvt_s(_Dest, _Size, _Value, _NumOfDigits, _PtDec, _PtSign); } }
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _fcvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
__declspec(dllimport) errno_t __cdecl _gcvt_s([SA_Pre(Null=SA_No,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _gcvt_s(char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Value, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits) { return _gcvt_s(_Dest, _Size, _Value, _NumOfDigits); } }
__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_gcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) char * __cdecl _gcvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atodbl([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CRT_DOUBLE * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atoldbl([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _LDOUBLE * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atoflt([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CRT_FLOAT * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atodbl_l([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CRT_DOUBLE * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atoldbl_l([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _LDOUBLE * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _atoflt_l([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CRT_FLOAT * _Result, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _Str, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned long __cdecl _lrotl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned long __cdecl _lrotr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
 __declspec(dllimport) errno_t   __cdecl _makepath_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _PathResult, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Ext);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _makepath_s(char (&_Path)[_Size], [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Ext) { return _makepath_s(_Path, _Size, _Drive, _Dir, _Filename, _Ext); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_makepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _makepath([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Path, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Ext);












#line 751 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"












#line 764 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
        _onexit_t __cdecl _onexit([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _onexit_t _Func);
#line 766 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
        





#pragma warning (push)
#pragma warning (disable:6540) 
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl _putenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _EnvString);
 __declspec(dllimport) errno_t __cdecl _putenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Name, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Value);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned int __cdecl _rotl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned __int64 __cdecl _rotl64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned int __cdecl _rotr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
        [returnvalue:SA_Post(MustCheck=SA_Yes)] unsigned __int64 __cdecl _rotr64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned __int64 _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Shift);
#pragma warning (pop)

__declspec(dllimport) errno_t __cdecl _searchenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _EnvVar, [SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _ResultPath, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _searchenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _EnvVar, char (&_ResultPath)[_Size]) { return _searchenv_s(_Filename, _EnvVar, _ResultPath, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_searchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _searchenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _EnvVar, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_ResultPath);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_splitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void   __cdecl _splitpath([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _FullPath, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Drive, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dir, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Filename, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Ext);
 __declspec(dllimport) errno_t  __cdecl _splitpath_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _FullPath, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_DriveSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Drive, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DriveSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_DirSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dir, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DirSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_FilenameSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _FilenameSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_ExtSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Ext, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ExtSize);
extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _splitpath_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const char *_Dest, char (&_Drive)[_DriveSize], char (&_Dir)[_DirSize], char (&_Name)[_NameSize], char (&_Ext)[_ExtSize]) { return _splitpath_s(_Dest, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }

__declspec(dllimport) void   __cdecl _swab([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Post(ValidElements="_SizeInBytes")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf1, [SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Post(ValidElements="_SizeInBytes")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf2, int _SizeInBytes);








#line 804 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wfullpath([SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _FullPath, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Path, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);



#line 810 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

 __declspec(dllimport) errno_t __cdecl _wmakepath_s([SA_Pre(Null=SA_No,WritableElements="_SIZE")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _PathResult, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SIZE, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Ext);        
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmakepath_s(wchar_t (&_ResultPath)[_Size], [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Ext) { return _wmakepath_s(_ResultPath, _Size, _Drive, _Dir, _Filename, _Ext); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmakepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _wmakepath([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_ResultPath, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Drive, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Dir, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Ext);




[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int    __cdecl _wputenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _EnvString);
 __declspec(dllimport) errno_t __cdecl _wputenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Name, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Value);
__declspec(dllimport) errno_t __cdecl _wsearchenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _EnvVar, [SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _ResultPath, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wsearchenv_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _EnvVar, wchar_t (&_ResultPath)[_Size]) { return _wsearchenv_s(_Filename, _EnvVar, _ResultPath, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsearchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void __cdecl _wsearchenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _EnvVar, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_ResultPath);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsplitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) void   __cdecl _wsplitpath([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _FullPath, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Drive, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dir, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Filename, [SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Ext);
__declspec(dllimport) errno_t __cdecl _wsplitpath_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _FullPath, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_DriveSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Drive, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DriveSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_DirSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dir, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _DirSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_FilenameSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _FilenameSize, 
		[SA_Pre(Null=SA_Maybe,WritableElements="_ExtSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Ext, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _ExtSize);
extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _wsplitpath_s([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const wchar_t *_Path, wchar_t (&_Drive)[_DriveSize], wchar_t (&_Dir)[_DirSize], wchar_t (&_Name)[_NameSize], wchar_t (&_Ext)[_ExtSize]) { return _wsplitpath_s(_Path, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }


#line 834 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "SetErrorMode" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _seterrormode([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Beep" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _beep([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned _Frequency, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned _Duration);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "Sleep" " instead. See online help for details.")) __declspec(dllimport) void __cdecl _sleep([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Duration);

#line 841 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"
















#pragma warning(push)
#pragma warning(disable: 4141)  
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ecvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl ecvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_fcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) char * __cdecl fcvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtDec, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _PtSign);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_gcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		__declspec(dllimport) char * __cdecl gcvt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Val, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NumOfDigits, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_itoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		__declspec(dllimport) char * __cdecl itoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ltoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))		__declspec(dllimport) char * __cdecl ltoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_putenv" ". See online help for details.")) __declspec(dllimport) int    __cdecl putenv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _EnvString);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_swab" ". See online help for details."))										__declspec(dllimport) void   __cdecl swab([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf1,[SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Buf2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInBytes);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_ultoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."))	__declspec(dllimport) char * __cdecl ultoa([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _Val, [SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dstbuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Radix);
#pragma warning(pop)
_onexit_t __cdecl onexit([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _onexit_t _Func);

#line 871 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

#line 873 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


}

#line 878 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"


#pragma pack(pop)
#line 882 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

#line 884 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdlib.h"

#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"


 

namespace std {

using ::size_t; using ::div_t; using ::ldiv_t;

using ::abort; using ::abs; using ::atexit;
using ::atof; using ::atoi; using ::atol;
using ::bsearch; using ::calloc; using ::div;
using ::exit; using ::free; using ::getenv;
using ::labs; using ::ldiv; using ::malloc;
using ::mblen; using ::mbstowcs; using ::mbtowc;
using ::qsort; using ::rand; using ::realloc;
using ::srand; using ::strtod; using ::strtol;
using ::strtoul; using ::system;
using ::wcstombs; using ::wctomb;


}
 #line 37 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"
#line 38 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"

#line 40 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdlib"





#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"

#pragma once




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

#pragma once




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

#pragma once







#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"

#pragma once










 #line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"


extern "C" {
#line 27 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"




























#line 56 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"









#line 66 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"


__declspec(dllimport) extern unsigned long  __cdecl __threadid(void);

__declspec(dllimport) extern uintptr_t __cdecl __threadhandle(void);
#line 72 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"



}
#line 77 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"

#line 79 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stddef.h"
#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"


 
namespace std {
using ::ptrdiff_t; using ::size_t;
}
 #line 21 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"
#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"

#line 24 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"
#line 25 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstddef"





#line 11 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"


 #pragma pack(push,8)
 #pragma warning(push,3)
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

namespace std {

		
 

 
 
 
 
 

 
 

 



 
 

 
 

 

















#line 60 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

 

		
 

 

		




 
 

 
 



#line 82 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"
  
 #line 84 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

 
  
  
  
 #line 90 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

		
enum _Uninitialized
	{	
	_Noinit};
}

 #pragma warning(pop)
 #pragma pack(pop)
#line 100 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"

#line 102 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"
#line 103 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstddef"





#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"


 #pragma pack(push,8)
 #pragma warning(push,3)
#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"










namespace std {

  


  



  



}

 

 #line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"













#pragma once
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"








#pragma pack(push,8)
#line 28 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"







typedef void (__cdecl *terminate_function)();
typedef void (__cdecl *terminate_handler)();
typedef void (__cdecl *unexpected_function)();
typedef void (__cdecl *unexpected_handler)();





#line 45 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"








struct _EXCEPTION_POINTERS;

typedef void (__cdecl *_se_translator_function)(unsigned int, struct _EXCEPTION_POINTERS*);
#line 57 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"

__declspec(dllimport) __declspec(noreturn) void __cdecl terminate(void);
__declspec(dllimport) void __cdecl unexpected(void);

__declspec(dllimport) int __cdecl _is_exception_typeof([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const type_info &_Type, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] struct _EXCEPTION_POINTERS * _ExceptionPtr);



__declspec(dllimport) terminate_function __cdecl set_terminate([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] terminate_function _NewPtFunc);
extern "C" __declspec(dllimport) terminate_function __cdecl _get_terminate(void);
__declspec(dllimport) unexpected_function __cdecl set_unexpected([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unexpected_function _NewPtFunc);
extern "C" __declspec(dllimport) unexpected_function __cdecl _get_unexpected(void);
#line 70 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"



__declspec(dllimport) _se_translator_function __cdecl _set_se_translator([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _se_translator_function _NewPtFunc);
#line 75 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"
__declspec(dllimport) bool __cdecl __uncaught_exception();















#pragma pack(pop)
#line 93 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"
#line 94 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"
#line 95 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\eh.h"
#line 41 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"
 #line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"






#pragma pack(push,8)
#line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"


extern "C" {
#line 35 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"







#line 43 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"





#line 49 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"













typedef struct _heapinfo {
        int * _pentry;
        size_t _size;
        int _useflag;
        } _HEAPINFO;

#line 69 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"




extern __declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_amblksiz" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) unsigned int _amblksiz;



#line 78 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"



































#line 114 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

































#line 148 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

__declspec(dllimport) int     __cdecl _resetstkoflw (void);



__declspec(dllimport) unsigned long __cdecl _set_malloc_crt_max_wait([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned long _NewValue);








#line 163 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) void *  __cdecl _expand([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t  __cdecl _msize([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void * _Memory);




#line 171 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void *          __cdecl _alloca([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) size_t  __cdecl _get_sbh_threshold(void);
__declspec(dllimport) int     __cdecl _set_sbh_threshold([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewValue);
__declspec(dllimport) errno_t __cdecl _set_amblksiz([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Value);
__declspec(dllimport) errno_t __cdecl _get_amblksiz([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Value);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _heapadd([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void * _Memory, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _heapchk(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int     __cdecl _heapmin(void);
__declspec(dllimport) int     __cdecl _heapset([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Fill);
__declspec(dllimport)  int     __cdecl _heapwalk([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] _HEAPINFO * _EntryInfo);
__declspec(dllimport) size_t  __cdecl _heapused(size_t * _Used, size_t * _Commit);

__declspec(dllimport) intptr_t __cdecl _get_heap_handle(void);











#line 197 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

typedef char __static_assert_t[ (sizeof(unsigned int) <= 8) ];


#pragma warning(push)
#pragma warning(disable:6540)
__inline void *_MarkAllocaS([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)]  void *_Ptr, unsigned int _Marker)
{
    if (_Ptr)
    {
        *((unsigned int*)_Ptr) = _Marker;
        _Ptr = (char*)_Ptr + 8;
    }
    return _Ptr;
}
#pragma warning(pop)
#line 214 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"







#line 222 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"







#line 230 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"








__declspec(noalias) __inline void __cdecl _freea([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory)
{
    unsigned int _Marker;
    if (_Memory)
    {
        _Memory = (char*)_Memory - 8;
        _Marker = *(unsigned int *)_Memory;
        if (_Marker == 0xDDDD)
        {
            free(_Memory);
        }





#line 255 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"
    }
}
#line 258 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"
#line 259 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"




#line 264 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

#line 266 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"






















}
#line 290 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"


#pragma pack(pop)
#line 294 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"

#line 296 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\malloc.h"
#line 42 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

 

#line 46 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

 


































typedef const char *__exString;
extern "C" [returnvalue:SA_Post(MustCheck=SA_Yes)] size_t __cdecl strlen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *);

extern "C" __declspec(dllimport) errno_t __cdecl strcpy_s([SA_Pre(Null=SA_No,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Src);




#line 91 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

 namespace std {

class __declspec(dllimport) exception
	{	
public:


































































































     exception();
     exception(const char *const&);
     exception(const char *const&, int);
     exception(const exception&);
    exception&  operator=(const exception&);
    virtual  ~exception();
    virtual const char *  what() const;
#line 203 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"
private:
	const char *_m_what;
	int _m_doFree;
	};

using ::set_terminate; using ::terminate_handler; using ::terminate; using ::set_unexpected; using ::unexpected_handler; using ::unexpected;

typedef void (__cdecl *_Prhand)(const exception&);




#line 216 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"
__declspec(dllimport) bool __cdecl uncaught_exception();
#line 218 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

}

 












































































































#line 331 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"


namespace std {


#line 337 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

		
class bad_exception : public exception
	{	
public:
	 bad_exception(const char *_Message = "bad exception")
		throw ()
		: exception(_Message)
		{	
		}

	virtual  ~bad_exception() throw ()
		{	
		}

 





#line 359 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

	};


static const char * _bad_alloc_Message = "bad allocation";

		
class bad_alloc : public exception
	{	
public:
	 bad_alloc(const char *_Message) throw ()
		: exception(_Message)
		{	
		}

	 bad_alloc() throw ()
		: exception(_bad_alloc_Message, 1)
		{	
		}

	virtual  ~bad_alloc() throw ()
		{	
		}

 





#line 390 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

	};


}









#line 405 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"








 #pragma warning(pop)
 #pragma pack(pop)
#line 416 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"

#line 418 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"
#line 419 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\exception"





#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

#pragma once






 #pragma pack(push,8)
 #pragma warning(push,3)
 
#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

  








#line 24 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

namespace std {

		
 




typedef void (__cdecl * new_handler) ();
#line 35 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"
 #line 36 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

 
struct nothrow_t
	{	
	};

extern const nothrow_t nothrow;	
 #line 44 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

		
__declspec(dllimport) new_handler __cdecl set_new_handler([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] new_handler)
	throw ();	
}

		
void __cdecl operator delete(void *) throw ();
#pragma warning (suppress: 4985)
[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void *__cdecl operator new(size_t _Size) throw (...);

 
  
inline void *__cdecl operator new(size_t, void *_Where) throw ()
	{	
	return (_Where);
	}

inline void __cdecl operator delete(void *, void *) throw ()
	{	
	}
 #line 66 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

 
  
inline void *__cdecl operator new[](size_t, void *_Where) throw ()
	{	
	return (_Where);
	}

inline void __cdecl operator delete[](void *, void *) throw ()
	{	
	}
 #line 78 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

void __cdecl operator delete[](void *) throw ();	

[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void *__cdecl operator new[](size_t _Size)
	throw (...);	

 
  
[returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] void *__cdecl operator new(size_t _Size, const std::nothrow_t&)
	throw ();

[returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] void *__cdecl operator new[](size_t _Size, const std::nothrow_t&)
	throw ();	

void __cdecl operator delete(void *, const std::nothrow_t&)
	throw ();	

void __cdecl operator delete[](void *, const std::nothrow_t&)
	throw ();	
 #line 98 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"


 
using std::new_handler;
 #line 103 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"


 
 #pragma warning(pop)
 #pragma pack(pop)
#line 109 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"

#line 111 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"
#line 112 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\new"





#line 9 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\climits"

#pragma once




 #pragma warning(disable: 4514)


#line 11 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\climits"





#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdio"

#pragma once










 
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdio"


 
 
 
 
 
 
 

 
 
 
 





typedef FILE _iobuf;


 
namespace std {
using ::_iobuf;

using ::size_t; using ::fpos_t; using ::FILE;
using ::clearerr; using ::fclose; using ::feof;
using ::ferror; using ::fflush; using ::fgetc;
using ::fgetpos; using ::fgets; using ::fopen;
using ::fprintf; using ::fputc; using ::fputs;
using ::fread; using ::freopen; using ::fscanf;
using ::fseek; using ::fsetpos; using ::ftell;
using ::fwrite; using ::getc; using ::getchar;
using ::gets; using ::perror;
using ::putc; using ::putchar;
using ::printf; using ::puts; using ::remove;
using ::rename; using ::rewind; using ::scanf;
using ::setbuf; using ::setvbuf; using ::sprintf;
using ::sscanf; using ::tmpfile; using ::tmpnam;
using ::ungetc; using ::vfprintf; using ::vprintf;
using ::vsprintf;


}
 #line 61 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdio"
#line 62 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdio"

#line 64 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstdio"





#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstring"

#pragma once










 
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstring"

 
  
namespace std {
using ::size_t; using ::memchr; using ::memcmp;

using ::memcpy; using ::memmove; using ::memset;
using ::strcat; using ::strchr; using ::strcmp;
using ::strcoll; using ::strcpy; using ::strcspn;
using ::strerror; using ::strlen; using ::strncat;
using ::strncmp; using ::strncpy; using ::strpbrk;
using ::strrchr; using ::strspn; using ::strstr;
using ::strtok; using ::strxfrm;

}
  #line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstring"
 #line 32 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstring"

#line 34 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cstring"





#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"

#pragma once










 #line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


















#pragma once
#line 21 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 27 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#pragma pack(push,8)
#line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


extern "C" {
#line 35 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





















































typedef unsigned long _fsize_t; 

#line 91 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"



struct _wfinddata32_t {
        unsigned    attrib;
        __time32_t  time_create;    
        __time32_t  time_access;    
        __time32_t  time_write;
        _fsize_t    size;
        wchar_t     name[260];
};

struct _wfinddata32i64_t {
        unsigned    attrib;
        __time32_t  time_create;    
        __time32_t  time_access;    
        __time32_t  time_write;
        __int64     size;
        wchar_t     name[260];
};

struct _wfinddata64i32_t {
        unsigned    attrib;
        __time64_t  time_create;    
        __time64_t  time_access;    
        __time64_t  time_write;
        _fsize_t    size;
        wchar_t     name[260];
};

struct _wfinddata64_t {
        unsigned    attrib;
        __time64_t  time_create;    
        __time64_t  time_access;    
        __time64_t  time_write;
        __int64     size;
        wchar_t     name[260];
};



















#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#line 152 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"






























#line 183 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 185 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 186 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

__declspec(dllimport) const unsigned short * __cdecl __pctype_func(void);

__declspec(dllimport) extern const unsigned short *_pctype;


#line 193 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 194 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 195 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





__declspec(dllimport) extern const unsigned short _wctype[];
#line 202 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

__declspec(dllimport) const wctype_t * __cdecl __pwctype_func(void);

__declspec(dllimport) extern const wctype_t *_pwctype;


#line 209 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 210 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 211 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"







                                
















[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswalpha([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswalpha_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswlower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswlower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswdigit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswdigit_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswxdigit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswxdigit_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswspace([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswspace_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswpunct([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswpunct_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswalnum([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswalnum_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswprint([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswprint_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswgraph([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswgraph_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswcntrl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswcntrl_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswascii([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl isleadbyte([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isleadbyte_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl towupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _towupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl towlower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _towlower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale); 
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iswctype([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wctype_t _Type);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswctype_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wctype_t _Type, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __iswcsymf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswcsymf_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __iswcsym([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iswcsym_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "iswctype" " instead. See online help for details.")) __declspec(dllimport) int __cdecl is_wctype([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wctype_t _Type);


#line 277 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"












#line 290 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wgetcwd([SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wgetdcwd([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive, [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords);
[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * __cdecl _wgetdcwd_nolock([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive, [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t * _DstBuf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords);





#line 300 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wchdir([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Path);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wmkdir([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Path);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wrmdir([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Path);


#line 307 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"



[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _waccess([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _AccessMode);
 __declspec(dllimport) errno_t __cdecl _waccess_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _AccessMode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wchmod([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _wcreat([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _PermissionMode);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) intptr_t __cdecl _wfindfirst32([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata32_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wfindnext32([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] intptr_t _FindHandle, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata32_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wunlink([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wrename([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _OldFilename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _NewFilename);
__declspec(dllimport) errno_t __cdecl _wmktemp_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _TemplateName, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmktemp_s(wchar_t (&_TemplateName)[_Size]) { return _wmktemp_s(_TemplateName, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmktemp_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wmktemp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_TemplateName);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) intptr_t __cdecl _wfindfirst32i64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata32i64_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) intptr_t __cdecl _wfindfirst64i32([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata64i32_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) intptr_t __cdecl _wfindfirst64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata64_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wfindnext32i64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] intptr_t _FindHandle, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata32i64_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wfindnext64i32([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] intptr_t _FindHandle, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata64i32_t * _FindData);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _wfindnext64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] intptr_t _FindHandle, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _wfinddata64_t * _FindData);

 __declspec(dllimport) errno_t __cdecl _wsopen_s([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _FileHandle, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _OpenFlag, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ShareFlag, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _PermissionFlag);






#line 337 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


extern "C++" __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _wopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _OpenFlag, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _PermissionMode = 0);
extern "C++" __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsopen_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _wsopen([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _OpenFlag, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ShareFlag, int _PermissionMode = 0);

#line 343 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#line 346 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





 __declspec(dllimport) wchar_t * __cdecl _wsetlocale([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Category, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Locale);


#line 355 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





__declspec(dllimport) intptr_t __cdecl _wexecl([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wexecle([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wexeclp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wexeclpe([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wexecv([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList);
__declspec(dllimport) intptr_t __cdecl _wexecve([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _Env);
__declspec(dllimport) intptr_t __cdecl _wexecvp([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList);
__declspec(dllimport) intptr_t __cdecl _wexecvpe([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList, 
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _Env);
__declspec(dllimport) intptr_t __cdecl _wspawnl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wspawnle([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wspawnlp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wspawnlpe([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ArgList, ...);
__declspec(dllimport) intptr_t __cdecl _wspawnv([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList);
__declspec(dllimport) intptr_t __cdecl _wspawnve([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _Env);
__declspec(dllimport) intptr_t __cdecl _wspawnvp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList);
__declspec(dllimport) intptr_t __cdecl _wspawnvpe([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _ArgList,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * const * _Env);






#line 387 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


































#line 422 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


























#line 449 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 451 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"







typedef unsigned short _ino_t;      


typedef unsigned short ino_t;
#line 463 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 465 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


typedef unsigned int _dev_t;        


typedef unsigned int dev_t;
#line 472 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 474 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


typedef long _off_t;                


typedef long off_t;
#line 481 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 483 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"



struct _stat32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };



struct stat {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        time_t st_atime;
        time_t st_mtime;
        time_t st_ctime;
        };

#line 517 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

struct _stat32i64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };

struct _stat64i32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };

struct _stat64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };























#line 583 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"



#line 587 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"





__declspec(dllimport) int __cdecl _wstat32([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Name, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _stat32 * _Stat);

__declspec(dllimport) int __cdecl _wstat32i64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Name, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _stat32i64 * _Stat);
__declspec(dllimport) int __cdecl _wstat64i32([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Name, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _stat64i32 * _Stat);
__declspec(dllimport) int __cdecl _wstat64([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Name, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] struct _stat64 * _Stat);


#line 600 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 602 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"










 __declspec(dllimport) errno_t __cdecl _cgetws_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="*_SizeRead")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buffer, size_t _SizeInWords, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _SizeRead);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _cgetws_s([SA_Post(Deref=1,Null=SA_No,ValidElements="*_Buffer")] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size], size_t * _Size) { return _cgetws_s(_Buffer, _Size, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_cgetws_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _cgetws([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Buffer);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _getwch(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _getwche(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _putwch(wchar_t _WCh);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) wint_t __cdecl _ungetwch(wint_t _WCh);
 __declspec(dllimport) int __cdecl _cputws([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _String);
 __declspec(dllimport) int __cdecl _cwprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _cwprintf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_cwscanf_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _cwscanf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_cwscanf_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) int __cdecl _cwscanf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _cwscanf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _cwscanf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="scanf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
 __declspec(dllimport) int __cdecl _vcwprintf([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t *_Format, va_list _ArgList);
 __declspec(dllimport) int __cdecl _vcwprintf_s([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t *_Format, va_list _ArgList);

 __declspec(dllimport) int __cdecl _cwprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, ...);
 __declspec(dllimport) int __cdecl _vcwprintf_p([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t*  _Format, va_list _ArgList);

__declspec(dllimport) int __cdecl _cwprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
__declspec(dllimport) int __cdecl _cwprintf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
__declspec(dllimport) int __cdecl _vcwprintf_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t *_Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
__declspec(dllimport) int __cdecl _vcwprintf_s_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);
__declspec(dllimport) int __cdecl _cwprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, ...);
__declspec(dllimport) int __cdecl _vcwprintf_p_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale, va_list _ArgList);

 wint_t __cdecl _putwch_nolock(wchar_t _WCh);
[returnvalue:SA_Post(MustCheck=SA_Yes)] wint_t __cdecl _getwch_nolock(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] wint_t __cdecl _getwche_nolock(void);
 wint_t __cdecl _ungetwch_nolock(wint_t _WCh);






#line 650 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#line 653 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"






























































































































































































































































































































#line 972 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"






















































































































































struct tm {
        int tm_sec;     
        int tm_min;     
        int tm_hour;    
        int tm_mday;    
        int tm_mon;     
        int tm_year;    
        int tm_wday;    
        int tm_yday;    
        int tm_isdst;   
        };

#line 1135 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"




 
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wasctime_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wasctime([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm * _Tm);
__declspec(dllimport) errno_t __cdecl _wasctime_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElementsConst=26)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm * _Tm);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wasctime_s([SA_Post(Deref=1,Null=SA_No,ValidElementsConst=26)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm * _Time) { return _wasctime_s(_Buffer, _Size, _Time); } }

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctime32_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wctime32([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time32_t *_Time);
__declspec(dllimport) errno_t __cdecl _wctime32_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElementsConst=26)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t* _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time32_t * _Time);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wctime32_s([SA_Post(Deref=1,Null=SA_No,ValidElementsConst=26)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time32_t * _Time) { return _wctime32_s(_Buffer, _Size, _Time); } }

__declspec(dllimport) size_t __cdecl wcsftime([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t * _Format,  [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm * _Tm);
__declspec(dllimport) size_t __cdecl _wcsftime_l([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_FormatString(Style="printf")] const wchar_t *_Format, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm *_Tm, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);

__declspec(dllimport) errno_t __cdecl _wstrdate_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElementsConst=9)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wstrdate_s([SA_Post(Deref=1,Null=SA_No,ValidElementsConst=9)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size]) { return _wstrdate_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wstrdate_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wstrdate([SA_Pre(Null=SA_No,WritableElementsConst=9)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Buffer);

__declspec(dllimport) errno_t __cdecl _wstrtime_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElementsConst=9)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wstrtime_s([SA_Post(Deref=1,Null=SA_No,ValidElementsConst=9)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size]) { return _wstrtime_s(_Buffer, _Size); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wstrtime_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wstrtime([SA_Pre(Null=SA_No,WritableElementsConst=9)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Buffer);

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctime64_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) wchar_t * __cdecl _wctime64([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time64_t * _Time);
__declspec(dllimport) errno_t __cdecl _wctime64_s([SA_Pre(Null=SA_No,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElementsConst=26)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t* _Buf, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time64_t *_Time);
extern "C++" { template <size_t _Size> inline errno_t __cdecl _wctime64_s([SA_Post(Deref=1,Null=SA_No,ValidElementsConst=26)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Buffer)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const __time64_t * _Time) { return _wctime64_s(_Buffer, _Size, _Time); } }


#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"













#pragma once
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"







#line 24 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"





#pragma warning(push)
#pragma warning(disable:4996)















static __inline wchar_t * __cdecl _wctime(const time_t * _Time)
{
#pragma warning( push )
#pragma warning( disable : 4996 )
    return _wctime64(_Time);
#pragma warning( pop )
}

static __inline errno_t __cdecl _wctime_s(wchar_t *_Buffer, size_t _SizeInWords, const time_t * _Time)
{
    return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
#line 59 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"

#pragma warning(pop)

#line 63 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"
#line 64 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wtime.inl"
#line 1165 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 1166 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#line 1169 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


typedef int mbstate_t;
typedef wchar_t _Wint_t;

__declspec(dllimport) wint_t __cdecl btowc(int);
__declspec(dllimport) size_t __cdecl mbrlen([SA_Pre(Null=SA_Maybe,ValidBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes,
                              [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
__declspec(dllimport) size_t __cdecl mbrtowc([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstCh, [SA_Pre(Null=SA_Maybe,ValidBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] const char * _SrcCh,
                               [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
__declspec(dllimport) errno_t __cdecl mbsrtowcs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t* _Retval, [SA_Pre(Null=SA_Maybe,WritableElements="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] const char ** _PSrc, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl mbsrtowcs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Retval, [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] const char ** _PSource, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State) { return mbsrtowcs_s(_Retval, _Dest, _Size, _PSource, _Count, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbsrtowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl mbsrtowcs([SA_Pre(Null=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_Maybe)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] const char ** _PSrc, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] mbstate_t * _State);

__declspec(dllimport) errno_t __cdecl wcrtomb_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Retval, [SA_Pre(Null=SA_Maybe,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Ch, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcrtomb_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Retval, [SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Source, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State) { return wcrtomb_s(_Retval, _Dest, _Size, _Source, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcrtomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl wcrtomb([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _Source, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
__declspec(dllimport) errno_t __cdecl wcsrtombs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Retval, [SA_Pre(Null=SA_Maybe,WritableBytes="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="*_Retval")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _Dst,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] const wchar_t ** _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsrtombs_s([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _Retval, [SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char (&_Dest)[_Size], [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] const wchar_t ** _PSrc, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State) { return wcsrtombs_s(_Retval, _Dest, _Size, _PSrc, _Count, _State); } }
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsrtombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details.")) __declspec(dllimport) size_t __cdecl wcsrtombs([SA_Pre(Null=SA_Maybe)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=2,Valid=SA_Yes)] [SA_Post(Deref=1,Null=SA_No,NullTerminated=SA_Yes)] [SA_Post(Deref=2,Valid=SA_Yes)] const wchar_t ** _PSource, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] mbstate_t * _State);
__declspec(dllimport) int __cdecl wctob([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wint_t _WCh);






#line 1199 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
__declspec(dllimport)  void *  __cdecl memmove([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_Size")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);
#line 1201 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
 void *  __cdecl memcpy([SA_Pre(Null=SA_Maybe,WritableBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_Size")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_Maybe,ValidBytes="_Size")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size);

__declspec(dllimport) errno_t __cdecl memcpy_s([SA_Pre(Null=SA_Maybe,WritableBytes="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_MaxCount")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _DstSize, [SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
__declspec(dllimport) errno_t __cdecl memmove_s([SA_Pre(Null=SA_Maybe,WritableBytes="_DstSize")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidBytes="_MaxCount")] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Dst, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _DstSize, [SA_Pre(Null=SA_Maybe,ValidBytes="_MaxCount")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Src, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _MaxCount);
#line 1206 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
__inline int __cdecl fwide([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] FILE * _F, int _M)
        {(void)_F; return (_M); }
__inline int __cdecl mbsinit([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const mbstate_t *_P)
        {return (_P == 0 || *_P == 0); }
__inline const wchar_t * __cdecl wmemchr([SA_Pre(Null=SA_No,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        {for (; 0 < _N; ++_S, --_N)
                if (*_S == _C)
                        return (const wchar_t *)(_S);
        return (0); }
__inline int __cdecl wmemcmp([SA_Pre(Null=SA_No,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S1, [SA_Pre(Null=SA_No,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        {for (; 0 < _N; ++_S1, ++_S2, --_N)
                if (*_S1 != *_S2)
                        return (*_S1 < *_S2 ? -1 : +1);
        return (0); }

__inline  wchar_t * __cdecl wmemcpy([SA_Pre(Null=SA_Maybe,WritableElements="_N")] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t *_S1, [SA_Pre(Null=SA_Maybe,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 4996 6386 )
            return (wchar_t *)memcpy(_S1, _S2, _N*sizeof(wchar_t));
#pragma warning( pop )
        }


__inline errno_t __cdecl wmemcpy_s([SA_Pre(Null=SA_Maybe,WritableElements="_N1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_N")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_S1, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _N1, [SA_Pre(Null=SA_Maybe,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S2, rsize_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 6386 )
            return memcpy_s(_S1, _N1*sizeof(wchar_t), _S2, _N*sizeof(wchar_t));
        }
#pragma warning( pop )
#line 1238 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

__inline  wchar_t * __cdecl wmemmove([SA_Pre(Null=SA_Maybe,WritableElements="_N")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_N")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_S1, [SA_Pre(Null=SA_Maybe,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 4996 6386 )
#pragma warning( disable : 6387)
			
            return (wchar_t *)memmove(_S1, _S2, _N*sizeof(wchar_t));
#pragma warning( pop )
        }


__inline errno_t __cdecl wmemmove_s([SA_Pre(Null=SA_Maybe,WritableElements="_N1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_N")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_S1, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _N1, [SA_Pre(Null=SA_Maybe,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *_S2, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] rsize_t _N)
        {
#pragma warning( push )
#pragma warning( disable : 6386 )
            return memmove_s(_S1, _N1*sizeof(wchar_t), _S2, _N*sizeof(wchar_t));
#pragma warning( pop )
        }
#line 1258 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

__inline wchar_t * __cdecl wmemset([SA_Pre(Null=SA_No,WritableElements="_N")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_N")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_S, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        {
            wchar_t *_Su = _S;
            for (; 0 < _N; ++_Su, --_N)
            {
                *_Su = _C;
            }
            return (_S);
        }


extern "C++" {
inline wchar_t * __cdecl wmemchr([SA_Pre(Null=SA_No,ValidElements="_N")] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_S, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] wchar_t _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _N)
        { return (wchar_t *)wmemchr((const wchar_t *)_S, _C, _N); }
}
#line 1275 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"
#line 1276 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


}       
#line 1280 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"


#pragma pack(pop)
#line 1284 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 1286 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\wchar.h"

#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"

typedef mbstate_t _Mbstatet;




typedef mbstate_t _Mbstatet;

 
namespace std {
using ::_Mbstatet;

using ::mbstate_t; using ::size_t;
using ::tm; using ::wint_t;


using ::btowc; using ::fgetwc; using ::fgetws; using ::fputwc;
using ::fputws; using ::fwide; using ::fwprintf;
using ::fwscanf; using ::getwc; using ::getwchar;
using ::mbrlen; using ::mbrtowc; using ::mbsrtowcs;
using ::mbsinit; using ::putwc; using ::putwchar;
using ::swprintf; using ::swscanf; using ::ungetwc;
using ::vfwprintf; using ::vswprintf; using ::vwprintf;
using ::wcrtomb; using ::wprintf; using ::wscanf;
using ::wcsrtombs; using ::wcstol; using ::wcscat;
using ::wcschr; using ::wcscmp; using ::wcscoll;
using ::wcscpy; using ::wcscspn; using ::wcslen;
using ::wcsncat; using ::wcsncmp; using ::wcsncpy;
using ::wcspbrk; using ::wcsrchr; using ::wcsspn;

using ::wcstod; using ::wcstoul; using ::wcsstr;

using ::wcstok; using ::wcsxfrm; using ::wctob;
using ::wmemchr; using ::wmemcmp; using ::wmemcpy;
using ::wmemmove; using ::wmemset; using ::wcsftime;


}
 #line 54 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"
#line 55 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"

#line 57 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\cwchar"





#line 9 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"













#pragma once
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"





#pragma pack(push,8)
#line 25 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"












extern "C" {
#line 39 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

 





typedef void *_HFILE; 


















typedef int (__cdecl * _CRT_REPORT_HOOK)(int, char *, int *);
typedef int (__cdecl * _CRT_REPORT_HOOKW)(int, wchar_t *, int *);



#line 71 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"




#line 76 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"




 





 










typedef int (__cdecl * _CRT_ALLOC_HOOK)(int, void *, size_t, int, long, const unsigned char *, int);


#line 101 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


#line 104 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

 





































 














typedef void (__cdecl * _CRT_DUMP_CLIENT)(void *, size_t);


#line 162 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


#line 165 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

struct _CrtMemBlockHeader;
typedef struct _CrtMemState
{
        struct _CrtMemBlockHeader * pBlockHeader;
        size_t lCounts[5];
        size_t lSizes[5];
        size_t lHighWaterCount;
        size_t lTotalCount;
} _CrtMemState;


 


























































































































































 
























 






__declspec(dllimport) extern long _crtAssertBusy;
#line 366 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


__declspec(dllimport) _CRT_REPORT_HOOK __cdecl _CrtGetReportHook(
    void
    );
#line 372 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"






__declspec(dllimport) _CRT_REPORT_HOOK __cdecl _CrtSetReportHook(
    [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _CRT_REPORT_HOOK _PFnNewHook
        );

__declspec(dllimport) int __cdecl _CrtSetReportHook2(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode,
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _CRT_REPORT_HOOK _PFnNewHook
        );

__declspec(dllimport) int __cdecl _CrtSetReportHookW2(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mode,
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _CRT_REPORT_HOOKW _PFnNewHook
        );


















#line 410 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"



























#line 438 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


__declspec(dllimport) int __cdecl _CrtSetReportMode(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReportType,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReportMode 
        );

__declspec(dllimport) _HFILE __cdecl _CrtSetReportFile(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReportType,
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _HFILE _ReportFile 
        );

__declspec(dllimport) int __cdecl _CrtDbgReport(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReportType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Linenumber,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _ModuleName,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Format,
        ...);

__declspec(dllimport) size_t __cdecl _CrtSetDebugFillThreshold(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewDebugFillThreshold
        );



#line 465 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"
__declspec(dllimport) int __cdecl _CrtDbgReportW(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReportType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _ModuleName,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Format,
        ...);










#line 483 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"



#line 487 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"







#line 495 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"



















#line 515 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"























































































#line 603 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

 





















































__declspec(dllimport) extern long _crtBreakAlloc;      
#line 660 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

__declspec(dllimport) long __cdecl _CrtSetBreakAlloc(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _BreakAlloc 
        );





[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport) void * __cdecl _malloc_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_Count*_Size")] __declspec(dllimport) void * __cdecl _calloc_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Count,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) void * __cdecl _realloc_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_NumOfElements*_SizeOfElements")] __declspec(dllimport) void * __cdecl _recalloc_dbg
(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
);

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) void * __cdecl _expand_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

__declspec(dllimport) void __cdecl _free_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType
        );

__declspec(dllimport) size_t __cdecl _msize_dbg (
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType
        );

__declspec(dllimport) size_t __cdecl _aligned_msize_dbg (
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport) void * __cdecl _aligned_malloc_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) void * __cdecl _aligned_realloc_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_NumOfElements*_SizeOfElements")] __declspec(dllimport) void * __cdecl _aligned_recalloc_dbg
(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
);

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_Size")] __declspec(dllimport) void * __cdecl _aligned_offset_malloc_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Size,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="_NewSize")] __declspec(dllimport) void * __cdecl _aligned_offset_realloc_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NewSize,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,WritableBytes="\n@""_NumOfElements*_SizeOfElements")] __declspec(dllimport) void * __cdecl _aligned_offset_recalloc_dbg
(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _NumOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeOfElements,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Alignment,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Offset,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
);

__declspec(dllimport) void __cdecl _aligned_free_dbg(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] void * _Memory
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) char * __cdecl _strdup_dbg(
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Str,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wcsdup_dbg(
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Str,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) char * __cdecl _tempnam_dbg(
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _DirName,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _FilePrefix,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wtempnam_dbg(
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _DirName,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _FilePrefix,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) char * __cdecl _fullpath_dbg(
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _FullPath, 
        [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Path, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInBytes,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wfullpath_dbg(
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _FullPath, 
        [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _Path, 
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _SizeInWords,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) char * __cdecl _getcwd_dbg(
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInBytes,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wgetcwd_dbg(
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) char * __cdecl _getdcwd_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive,
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInBytes,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] __declspec(dllimport) wchar_t * __cdecl _wgetdcwd_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive,
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] char * __cdecl _getdcwd_lk_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive,
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInBytes")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] char * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInBytes,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] [returnvalue:SA_Post(Null=SA_Maybe,NullTerminated=SA_Yes)] [returnvalue:SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * __cdecl _wgetdcwd_lk_dbg(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Drive,
        [SA_Pre(Null=SA_Maybe,WritableElements="_SizeInWords")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(NullTerminated=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t * _DstBuf,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _SizeInWords,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

 __declspec(dllimport) errno_t __cdecl _dupenv_s_dbg(
        [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes,WritableElements="*_PBufferSizeInBytes")] [SA_Post(Deref=2,Valid=SA_Yes)] char ** _PBuffer,
        [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PBufferSizeInBytes,
        [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _VarName,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );

 __declspec(dllimport) errno_t __cdecl _wdupenv_s_dbg(
        [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe,NullTerminated=SA_Yes,WritableElements="*_PBufferSizeInWords")] [SA_Post(Deref=2,Valid=SA_Yes)] wchar_t ** _PBuffer,
        [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] size_t * _PBufferSizeInWords,
        [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t * _VarName,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _BlockType,
        [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Filename,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _LineNumber
        );









#line 910 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

 





__declspec(dllimport) _CRT_ALLOC_HOOK __cdecl _CrtGetAllocHook
(
    void
);
#line 922 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"






__declspec(dllimport) _CRT_ALLOC_HOOK __cdecl _CrtSetAllocHook
(
    [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _CRT_ALLOC_HOOK _PfnNewHook
);








#line 941 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


















#line 960 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


 











__declspec(dllimport) extern int _crtDbgFlag;
#line 976 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

__declspec(dllimport) int __cdecl _CrtCheckMemory(
        void
        );

__declspec(dllimport) int __cdecl _CrtSetDbgFlag(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _NewFlag
        );

__declspec(dllimport) void __cdecl _CrtDoForAllClientObjects(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] void (__cdecl *_PFn)(void *, void *),
        void * _Context
        );









#line 999 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _CrtIsValidPointer(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Ptr,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Bytes,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _ReadWrite
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _CrtIsValidHeapPointer(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _HeapPtr
        );

__declspec(dllimport) int __cdecl _CrtIsMemoryBlock(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Memory,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] unsigned int _Bytes,
        [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] long * _RequestNumber,
        [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] char ** _Filename,
        [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _LineNumber
        );

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _CrtReportBlockType(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const void * _Memory
        );


 






__declspec(dllimport) _CRT_DUMP_CLIENT __cdecl _CrtGetDumpClient
(
    void
);
#line 1035 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"






__declspec(dllimport) _CRT_DUMP_CLIENT __cdecl _CrtSetDumpClient
(
    [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _CRT_DUMP_CLIENT _PFnNewDump
);









#line 1055 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"















#line 1071 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

__declspec(dllimport)  void __cdecl _CrtMemCheckpoint(
        [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CrtMemState * _State
        );

__declspec(dllimport)  int __cdecl _CrtMemDifference(
        [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] _CrtMemState * _State,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const _CrtMemState * _OldState,
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const _CrtMemState * _NewState
        );

__declspec(dllimport) void __cdecl _CrtMemDumpAllObjectsSince(
        [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const _CrtMemState * _State
        );

__declspec(dllimport) void __cdecl _CrtMemDumpStatistics(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const _CrtMemState * _State
        );

__declspec(dllimport) int __cdecl _CrtDumpMemoryLeaks(
        void
        );

__declspec(dllimport) int __cdecl _CrtSetCheckCount(
        [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _CheckCount
        );

__declspec(dllimport) int __cdecl _CrtGetCheckCount(
        void
        );

#line 1103 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


}



extern "C++" {












































 






 
#pragma warning(suppress: 4985)
[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void * __cdecl operator new[](size_t _Size);

[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void * __cdecl operator new(
        size_t _Size,
        int,
        const char *,
        int
        );

#pragma warning(suppress: 4985)
[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] void * __cdecl operator new[](
        size_t _Size,
        int,
        const char *,
        int
        );


void __cdecl operator delete[](void *);

inline void __cdecl operator delete(void * _P, int, const char *, int)
        { ::operator delete(_P); }

inline void __cdecl operator delete[](void * _P, int, const char *, int)
        { ::operator delete[](_P); }
#line 1189 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"



















#line 1209 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

#line 1211 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

}

#line 1215 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

#line 1217 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"


#pragma pack(pop)
#line 1221 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

#line 1223 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdbg.h"

#line 11 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"


 #pragma pack(push,8)
 #pragma warning(push,3)
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"
namespace std {

		
 




typedef long streamoff;
typedef int streamsize;
 #line 27 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

 

#line 31 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"


#line 34 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"
  
 #line 36 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"





extern __declspec(dllimport)  fpos_t _Fpz;
extern __declspec(dllimport)  const streamoff _BADOFF;
#line 44 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

		
template<class _Statetype>
	class fpos
	{	
	typedef fpos<_Statetype> _Myt;

public:
	 fpos(streamoff _Off = 0)
		: _Myoff(_Off), _Fpos(0), _Mystate(_Stz)
		{	
		}

	 fpos(_Statetype _State, fpos_t _Fileposition)
		: _Myoff(0), _Fpos(_Fileposition), _Mystate(_State)
		{	
		}

	_Statetype  state() const
		{	
		return (_Mystate);
		}

	void  state(_Statetype _State)
		{	
		_Mystate = _State;
		}

	fpos_t  seekpos() const
		{	
		return (_Fpos);
		}

	 operator streamoff() const
		{	
		return ((streamoff)(_Myoff + ((long)(_Fpos))));
		}

	streamoff  operator-(const _Myt& _Right) const
		{	
		return ((streamoff)*this - (streamoff)_Right);
		}

	_Myt&  operator+=(streamoff _Off)
		{	
		_Myoff += _Off;
		return (*this);
		}

	_Myt&  operator-=(streamoff _Off)
		{	
		_Myoff -= _Off;
		return (*this);
		}

	_Myt  operator+(streamoff _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt  operator-(streamoff _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}

	bool  operator==(const _Myt& _Right) const
		{	
		return ((streamoff)*this == (streamoff)_Right);
		}

	bool  operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

private:
	 static const _Statetype _Stz;	
	streamoff _Myoff;	
	fpos_t _Fpos;	
	_Statetype _Mystate;	
	};

	
template<class _Statetype>
	 const _Statetype fpos<_Statetype>::_Stz = _Statetype();

 

 
 

typedef fpos<_Mbstatet> streampos;
typedef streampos wstreampos;

		
struct _Unsecure_char_traits_tag
	{
	};
struct _Secure_char_traits_tag
	{
	};

		
		
		
		
		
struct _Char_traits_base
	{
	typedef _Unsecure_char_traits_tag _Secure_char_traits;
	};

		
		
		
template<class _Elem>
	struct char_traits:
		public _Char_traits_base
	{	
	typedef _Elem char_type;
	typedef long int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static int __cdecl compare(const _Elem *_First1,
		const _Elem *_First2, size_t _Count)
		{	


		for (; 0 < _Count; --_Count, ++_First1, ++_First2)
			if (!eq(*_First1, *_First2))
				return (lt(*_First1, *_First2) ? -1 : +1);
		return (0);
		}

	static size_t __cdecl length(const _Elem *_First)
		{	

		size_t _Count;
		for (_Count = 0; !eq(*_First, _Elem()); ++_First)
			++_Count;
		return (_Count);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl copy(_Elem *_First1,
		const _Elem *_First2, size_t _Count)
		{	
		
		return _Copy_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Copy_s(_Elem *_First1, size_t _Dest_size,
		const _Elem *_First2, size_t _Count)
		{	


		{ if (!(_Dest_size >= _Count)) { (void) ((!!((("_Dest_size >= _Count", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd", 219, 0, L"(\"_Dest_size >= _Count\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"_Dest_size >= _Count", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd", 219, 0); return (0); } };
		_Elem *_Next = _First1;
		for (; 0 < _Count; --_Count, ++_Next, ++_First2)
			assign(*_Next, *_First2);
		return (_First1);
		}

	static const _Elem *__cdecl find(const _Elem *_First,
		size_t _Count, const _Elem& _Ch)
		{	

		for (; 0 < _Count; --_Count, ++_First)
			if (eq(*_First, _Ch))
				return (_First);
		return (0);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl move(_Elem *_First1,
		const _Elem *_First2, size_t _Count)
		{	
		
		return _Move_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Move_s(_Elem *_First1, size_t _Dest_size,
		const _Elem *_First2, size_t _Count)
		{	


		{ if (!(_Dest_size >= _Count)) { (void) ((!!((("_Dest_size >= _Count", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd", 249, 0, L"(\"_Dest_size >= _Count\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"_Dest_size >= _Count", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd", 249, 0); return (0); } };
		_Elem *_Next = _First1;
		if (_First2 < _Next && _Next < _First2 + _Count)
			for (_Next += _Count, _First2 += _Count; 0 < _Count; --_Count)
				assign(*--_Next, *--_First2);
		else
			for (; 0 < _Count; --_Count, ++_Next, ++_First2)
				assign(*_Next, *_First2);
		return (_First1);
		}

	static _Elem *__cdecl assign(_Elem *_First,
		size_t _Count, _Elem _Ch)
		{	

		_Elem *_Next = _First;
		for (; 0 < _Count; --_Count, ++_Next)
			assign(*_Next, _Ch);
		return (_First);
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return ((_Elem)_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return ((int_type)_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl eof()
		{	
		return ((int_type)(-1));
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? (int_type)_Meta : (int_type)!eof());
		}
	};

		
template<> struct __declspec(dllimport) char_traits<wchar_t>:
	public _Char_traits_base
	{	
	typedef wchar_t _Elem;
	typedef _Elem char_type;	
	typedef wint_t int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static int __cdecl compare(const _Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	


		return (::wmemcmp(_First1, _First2, _Count));
		}

	static size_t __cdecl length(const _Elem *_First)
		{	

		return (::wcslen(_First));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl copy(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		
		return _Copy_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Copy_s(_Elem *_First1, size_t _Size_in_words, const _Elem *_First2,
		size_t _Count)
		{	


		::wmemcpy_s((_First1), (_Size_in_words), (_First2), (_Count));
		return _First1;
		}

	static const _Elem *__cdecl find(const _Elem *_First, size_t _Count,
		const _Elem& _Ch)
		{	

		return ((const _Elem *)::wmemchr(_First, _Ch, _Count));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl move(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		
		return _Move_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Move_s(_Elem *_First1, size_t _Size_in_words, const _Elem *_First2,
		size_t _Count)
		{	


		::wmemmove_s((_First1), (_Size_in_words), (_First2), (_Count));
		return (_Elem *)_First1;
		}

	static _Elem *__cdecl assign(_Elem *_First, size_t _Count, _Elem _Ch)
		{	

		return ((_Elem *)::wmemset(_First, _Ch, _Count));
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return (_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return (_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl eof()
		{	
		return ((wint_t)(0xFFFF));
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? _Meta : !eof());
		}
	};


		
template<> struct __declspec(dllimport) char_traits<char>:
	public _Char_traits_base
	{	
	typedef char _Elem;
	typedef _Elem char_type;
	typedef int int_type;
	typedef streampos pos_type;
	typedef streamoff off_type;
	typedef _Mbstatet state_type;

	static void __cdecl assign(_Elem& _Left, const _Elem& _Right)
		{	
		_Left = _Right;
		}

	static bool __cdecl eq(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left == _Right);
		}

	static bool __cdecl lt(const _Elem& _Left, const _Elem& _Right)
		{	
		return (_Left < _Right);
		}

	static int __cdecl compare(const _Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	


		return (::memcmp(_First1, _First2, _Count));
		}

	static size_t __cdecl length(const _Elem *_First)
		{	

		return (::strlen(_First));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl copy(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		
		return _Copy_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Copy_s(_Elem *_First1, size_t _Size_in_bytes, const _Elem *_First2,
		size_t _Count)
		{	


		::memcpy_s((_First1), (_Size_in_bytes), (_First2), (_Count));
		return _First1;
		}

	static const _Elem *__cdecl find(const _Elem *_First, size_t _Count,
		const _Elem& _Ch)
		{	

		return ((const _Elem *)::memchr(_First, _Ch, _Count));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	static _Elem *__cdecl move(_Elem *_First1, const _Elem *_First2,
		size_t _Count)
		{	
		
		return _Move_s(_First1, _Count, _First2, _Count);
		}

	static _Elem *__cdecl _Move_s(_Elem *_First1, size_t _Size_in_bytes, const _Elem *_First2,
		size_t _Count)
		{	


		::memmove_s((_First1), (_Size_in_bytes), (_First2), (_Count));
		return _First1;
		}

	static _Elem *__cdecl assign(_Elem *_First, size_t _Count, _Elem _Ch)
		{	

		return ((_Elem *)::memset(_First, _Ch, _Count));
		}

	static _Elem __cdecl to_char_type(const int_type& _Meta)
		{	
		return ((_Elem)_Meta);
		}

	static int_type __cdecl to_int_type(const _Elem& _Ch)
		{	
		return ((unsigned char)_Ch);
		}

	static bool __cdecl eq_int_type(const int_type& _Left,
		const int_type& _Right)
		{	
		return (_Left == _Right);
		}

	static int_type __cdecl eof()
		{	
		return ((-1));
		}

	static int_type __cdecl not_eof(const int_type& _Meta)
		{	
		return (_Meta != eof() ? _Meta : !eof());
		}
	};

		
	template <class _Traits>
	class _Inherits_from_char_traits_base
	{
		typedef char _True;
		class _False { char _Dummy[2]; };
		static _True _Inherits(_Char_traits_base);
		static _False _Inherits(...);
		static _Traits _Make_traits();

	public:
		enum { _Exists = sizeof(_Inherits(_Make_traits())) == sizeof(_True) };
	};

	template <class _Traits, bool _Inherits_from_char_traits_base>
	class _Char_traits_category_helper
	{
	public:
		typedef _Unsecure_char_traits_tag _Secure_char_traits;
	};

	
	
	template <class _Elem>
	class _Char_traits_category_helper< char_traits<_Elem> , true>
	{
	public:
		typedef _Secure_char_traits_tag _Secure_char_traits;
	};

	template <class _Traits>
	class _Char_traits_category_helper<_Traits, true>
	{
	public:
		typedef typename _Traits::_Secure_char_traits _Secure_char_traits;
	};

	template <class _Traits>
	class _Char_traits_category
	{
	public:
		typedef typename _Char_traits_category_helper<_Traits, _Inherits_from_char_traits_base<_Traits>::_Exists>::_Secure_char_traits _Secure_char_traits;
	};

	
	
	template<class _Traits> 
	inline
	typename _Char_traits_category<_Traits>::_Secure_char_traits _Char_traits_cat()
	{
		typename _Char_traits_category<_Traits>::_Secure_char_traits _Secure;
		return (_Secure);
	}

	namespace _Traits_helper
	{

		
	template<class _Traits>
	inline
	typename _Traits::char_type *copy_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count)
	{
		return copy_s<_Traits>(_First1, _Size, _First2, _Count, _Char_traits_cat<_Traits>());
	}

	template<class _Traits>
	inline
	typename _Traits::char_type *copy_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count, _Secure_char_traits_tag)
	{
		return _Traits::_Copy_s(_First1, _Size, _First2, _Count);
	}

	
	template<class _Traits>
	inline
	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	typename _Traits::char_type *copy_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count, _Unsecure_char_traits_tag)
	{
		return _Traits::copy(_First1, _First2, _Count);
	}

		
	template<class _Traits>
	inline
	typename _Traits::char_type *move_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count)
	{
		return move_s<_Traits>(_First1, _Size, _First2, _Count, _Char_traits_cat<_Traits>());
	}

	template<class _Traits>
	inline
	typename _Traits::char_type *move_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count, _Secure_char_traits_tag)
	{
		return _Traits::_Move_s(_First1, _Size, _First2, _Count);
	}

	
	template<class _Traits>
	inline
	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	typename _Traits::char_type *move_s(typename _Traits::char_type *_First1, size_t _Size,
		const typename _Traits::char_type *_First2, size_t _Count, _Unsecure_char_traits_tag)
	{
		return _Traits::move(_First1, _First2, _Count);
	}

	} 

		
template<class _Ty>
	class allocator;
class ios_base;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ios;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class istreambuf_iterator;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class ostreambuf_iterator;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_streambuf;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_istream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ostream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_iostream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_stringbuf;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_istringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_ostringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Alloc = allocator<_Elem> >
	class basic_stringstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_filebuf;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ifstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_ofstream;
template<class _Elem,
	class _Traits = char_traits<_Elem> >
	class basic_fstream;

 
template<class _Elem,
	class _InIt >
	class num_get;
template<class _Elem,
	class _OutIt >
	class num_put;
template<class _Elem>
	class collate;
 #line 703 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

		
typedef basic_ios<char, char_traits<char> > ios;
typedef basic_streambuf<char, char_traits<char> > streambuf;
typedef basic_istream<char, char_traits<char> > istream;
typedef basic_ostream<char, char_traits<char> > ostream;
typedef basic_iostream<char, char_traits<char> > iostream;
typedef basic_stringbuf<char, char_traits<char>,
	allocator<char> > stringbuf;
typedef basic_istringstream<char, char_traits<char>,
	allocator<char> > istringstream;
typedef basic_ostringstream<char, char_traits<char>,
	allocator<char> > ostringstream;
typedef basic_stringstream<char, char_traits<char>,
	allocator<char> > stringstream;
typedef basic_filebuf<char, char_traits<char> > filebuf;
typedef basic_ifstream<char, char_traits<char> > ifstream;
typedef basic_ofstream<char, char_traits<char> > ofstream;
typedef basic_fstream<char, char_traits<char> > fstream;

		
typedef basic_ios<wchar_t, char_traits<wchar_t> > wios;
typedef basic_streambuf<wchar_t, char_traits<wchar_t> >
	wstreambuf;
typedef basic_istream<wchar_t, char_traits<wchar_t> > wistream;
typedef basic_ostream<wchar_t, char_traits<wchar_t> > wostream;
typedef basic_iostream<wchar_t, char_traits<wchar_t> > wiostream;
typedef basic_stringbuf<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wstringbuf;
typedef basic_istringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wistringstream;
typedef basic_ostringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wostringstream;
typedef basic_stringstream<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wstringstream;
typedef basic_filebuf<wchar_t, char_traits<wchar_t> > wfilebuf;
typedef basic_ifstream<wchar_t, char_traits<wchar_t> > wifstream;
typedef basic_ofstream<wchar_t, char_traits<wchar_t> > wofstream;
typedef basic_fstream<wchar_t, char_traits<wchar_t> > wfstream;



 
typedef num_get<char, istreambuf_iterator<char, char_traits<char> > >
	numget;
typedef num_get<wchar_t, istreambuf_iterator<wchar_t, char_traits<wchar_t> > >
	wnumget;
typedef num_put<char, ostreambuf_iterator<char, char_traits<char> > >
	numput;
typedef num_put<wchar_t, ostreambuf_iterator<wchar_t, char_traits<wchar_t> > >
	wnumput;
typedef collate<char> ncollate;
typedef collate<wchar_t> wcollate;
 #line 757 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

}


 #pragma warning(pop)
 #pragma pack(pop)
#line 764 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"

#line 766 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"
#line 767 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iosfwd"





#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"


 #pragma pack(push,8)
 #pragma warning(push,3)
#line 12 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"

namespace std {
		
template<class _Ty> inline
	void swap(_Ty& _Left, _Ty& _Right)
	{	
	if (&_Left != &_Right)
		{	
		_Ty _Tmp = _Left;

		_Left = _Right;
		_Right = _Tmp;
		}
	}

		
template<class _Ty1,
	class _Ty2> struct pair
	{	
	typedef pair<_Ty1, _Ty2> _Myt;
	typedef _Ty1 first_type;
	typedef _Ty2 second_type;

	pair()
		: first(_Ty1()), second(_Ty2())
		{	
		}

	pair(const _Ty1& _Val1, const _Ty2& _Val2)
		: first(_Val1), second(_Val2)
		{	
		}

	template<class _Other1,
		class _Other2>
		pair(const pair<_Other1, _Other2>& _Right)
		: first(_Right.first), second(_Right.second)
		{	
		}

	void swap(_Myt& _Right)
		{	
		if (this != &_Right)
			{	
			std::swap(first, _Right.first);
			std::swap(second, _Right.second);
			}
		}

	_Ty1 first;	
	_Ty2 second;	
	};

		
template<class _Ty1,
	class _Ty2> inline
	bool operator==(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Left.first == _Right.first && _Left.second == _Right.second);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator!=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator<(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Left.first < _Right.first ||
		!(_Right.first < _Left.first) && _Left.second < _Right.second);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator>(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator<=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty1,
	class _Ty2> inline
	bool operator>=(const pair<_Ty1, _Ty2>& _Left,
		const pair<_Ty1, _Ty2>& _Right)
	{	
	return (!(_Left < _Right));
	}

template<class _Ty1,
	class _Ty2> inline
	pair<_Ty1, _Ty2> make_pair(_Ty1 _Val1, _Ty2 _Val2)
	{	
	return (pair<_Ty1, _Ty2>(_Val1, _Val2));
	}

template<class _Ty1,
	class _Ty2> inline
	void swap(pair<_Ty1, _Ty2>& _Left, pair<_Ty1, _Ty2>& _Right)
	{	
	_Left.swap(_Right);
	}

		
	namespace rel_ops
		{	
template<class _Ty> inline
	bool  operator!=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Ty> inline
	bool operator>(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Ty> inline
	bool operator<=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Ty> inline
	bool operator>=(const _Ty& _Left, const _Ty& _Right)
	{	
	return (!(_Left < _Right));
	}
		}
}

 #pragma warning(pop)
 #pragma pack(pop)
#line 161 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"

#line 163 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"
#line 164 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\utility"























#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



 #pragma pack(push,8)
 #pragma warning(push,3)
#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

namespace std {

		
struct _Unchecked_iterator_tag
	{
	};
struct _Range_checked_iterator_tag
	{
	};

		
struct _Unchanged_checked_iterator_base_type_tag
	{
	};

struct _Different_checked_iterator_base_type_tag
	{
	};

		
struct _Undefined_inner_type_tag
	{
	};

		
struct _Undefined_move_tag
	{
	};

struct _Swap_move_tag
	{
	};


class _Iterator_base_universal
	{	
	public:
	typedef _Unchecked_iterator_tag _Checked_iterator_category;
	typedef _Unchanged_checked_iterator_base_type_tag _Checked_iterator_base_type;
	typedef _Undefined_inner_type_tag _Inner_type;
	};


		


		


 




__declspec(noreturn) __declspec(deprecated) __declspec(dllimport) void __cdecl _Debug_message(const char *, const char *);






__declspec(dllimport) void __cdecl _Debug_message(const wchar_t *, const wchar_t *, unsigned int line);


#line 80 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		





#line 88 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
class _Iterator_base;

class __declspec(dllimport) _Container_base_secure
	{	
public:
	friend class _Iterator_base;

	 _Container_base_secure()
		: _Myfirstiter(0)
		{	
		}

	 _Container_base_secure(const _Container_base_secure&)
		: _Myfirstiter(0)
		{	
		}

	_Container_base_secure&  operator=(const _Container_base_secure&)
		{	
		return (*this);
		}

	 ~_Container_base_secure()
		{	
		_Orphan_all();
		}

	void  _Orphan_all() const;	
	void  _Swap_all(_Container_base_secure&) const;	

	void  _Swap_aux(_Container_base_secure&)
		{
		
		}

	_Iterator_base *_Myfirstiter;
	};

typedef _Container_base_secure _Container_base;

		
class _Iterator_base : public _Iterator_base_universal
	{	
public:
	friend class _Container_base_secure;

	 _Iterator_base()
		: _Mycont(0), _Mynextiter(0)
		{	
		}

	 _Iterator_base(const _Iterator_base& _Right)
		: _Mycont(0), _Mynextiter(0)
		{	
		*this = _Right;
		}

	_Iterator_base&  operator=(const _Iterator_base& _Right)
		{	
		if (_Mycont != _Right._Mycont)
			{	
			_Lockit _Lock(3);
			_Orphan_me();
			_Adopt(_Right._Mycont);
			}
		return (*this);
		}

	 ~_Iterator_base()
		{	
		_Lockit _Lock(3);
		_Orphan_me();
		}

	void  _Adopt(const _Container_base_secure *_Parent)
		{	
		if (_Mycont != _Parent)
			{	
			_Lockit _Lock(3);
			_Orphan_me();
			if (_Parent != 0 && _Parent->_Myfirstiter != ((_Iterator_base *)-3))
				{	
				_Mynextiter = _Parent->_Myfirstiter;
				((_Container_base_secure *)_Parent)->_Myfirstiter = this;
				}
			_Mycont = _Parent;
			}
		}

	void  _Orphan_me()
		{	
		if (_Mycont != 0 && _Mycont->_Myfirstiter != ((_Iterator_base *)-3))
			{	
			_Iterator_base **_Pnext =
				(_Iterator_base **)&_Mycont->_Myfirstiter;
			while (*_Pnext != 0 && *_Pnext != this)
				_Pnext = &(*_Pnext)->_Mynextiter;

			if (*_Pnext == 0)
				_Debug_message(L"ITERATOR LIST CORRUPTED!", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 189);
			*_Pnext = _Mynextiter;
			_Mycont = 0;
			}
		}

	const _Container_base_secure *  _Getmycont() const
		{	
		return _Mycont;
		}

	bool  _Same_container(const _Iterator_base& _Other) const
		{	
		return _Mycont == _Other._Mycont;
		}

	bool  _Has_container() const
		{	
		return _Mycont != 0;
		}

	const _Container_base_secure *_Mycont;
	_Iterator_base *_Mynextiter;
	};

typedef _Iterator_base _Iterator_base_secure;

inline void  _Container_base_secure::_Orphan_all() const
	{	
	_Lockit _Lock(3);
	if (_Myfirstiter != ((_Iterator_base *)-3))
		{
		for (_Iterator_base **_Pnext = (_Iterator_base **)&_Myfirstiter;
			*_Pnext != 0; *_Pnext = (*_Pnext)->_Mynextiter)
			(*_Pnext)->_Mycont = 0;
		*(_Iterator_base **)&_Myfirstiter = 0;
		}
	}

inline void  _Container_base_secure::_Swap_all(_Container_base_secure& _Right) const
	{	
	_Lockit _Lock(3);
	_Iterator_base *_Pnext;
	_Iterator_base *_Temp = (_Iterator_base *)_Myfirstiter;
	*(_Iterator_base **)&_Myfirstiter = (_Iterator_base *)_Right._Myfirstiter;
	*(_Iterator_base **)&_Right._Myfirstiter = _Temp;

	if (_Myfirstiter != ((_Iterator_base *)-3))
		{
		for (_Pnext = (_Iterator_base *)_Myfirstiter;
			_Pnext != 0; _Pnext = _Pnext->_Mynextiter)
			_Pnext->_Mycont = this;
		}
	if (_Right._Myfirstiter != ((_Iterator_base *)-3))
		{
		for (_Pnext = (_Iterator_base *)_Right._Myfirstiter;
			_Pnext != 0; _Pnext = _Pnext->_Mynextiter)
			_Pnext->_Mycont = &_Right;
		}
	}

		
 
  
 #line 254 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt(const _Ty1& _Left, const _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt(const _Ty1& _Left, _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt(_Ty1& _Left, const _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt(_Ty1& _Left, _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!(_Left < _Right))
		return (false);
	else if (_Right < _Left)
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}


		
 
  
 #line 306 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _Pr, class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt_pred(_Pr _Pred, const _Ty1& _Left, const _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt_pred(_Pr _Pred, const _Ty1& _Left, _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt_pred(_Pr _Pred, _Ty1& _Left, const _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}

template<class _Pr, class _Ty1, class _Ty2> inline
	bool __cdecl _Debug_lt_pred(_Pr _Pred, _Ty1& _Left, _Ty2& _Right,
		const wchar_t *_Where, unsigned int _Line)
	{	
	if (!_Pred(_Left, _Right))
		return (false);
	else if (_Pred(_Right, _Left))
		_Debug_message(L"invalid operator<", _Where, _Line);
	return (true);
	}


 































































































































































































































































#line 611 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"


template<class _Alloc>
	class _Container_base_aux_alloc_empty
		: public _Container_base
	{ 
	protected:
	explicit _Container_base_aux_alloc_empty(_Alloc) { }

	_Container_base_aux_alloc_empty(const _Container_base_aux_alloc_empty&) { }

	_Container_base_aux_alloc_empty& operator=(const _Container_base_aux_alloc_empty&)
		{
		return *this;
		}

	~_Container_base_aux_alloc_empty() { }
	};




#line 634 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
	
	
#line 637 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"




		
struct input_iterator_tag
	{	
	};

struct output_iterator_tag
	{	
	};

struct forward_iterator_tag
	: public input_iterator_tag
	{	
	};

struct bidirectional_iterator_tag
	: public forward_iterator_tag
	{	
	};

struct random_access_iterator_tag
	: public bidirectional_iterator_tag
	{	
	};

struct _Int_iterator_tag
	{	
	};

struct _Float_iterator_tag
	{	
	};

		
struct _Nonscalar_ptr_iterator_tag
	{	
	};
struct _Scalar_ptr_iterator_tag
	{	
	};

		
template<class _Category,
	class _Ty,
	class _Diff = ptrdiff_t,
	class _Pointer = _Ty *,
	class _Reference = _Ty&>
		struct iterator
			: public _Iterator_base_universal

	{	
	typedef _Category iterator_category;
	typedef _Ty value_type;
	typedef _Diff difference_type;
	typedef _Diff distance_type;	
	typedef _Pointer pointer;
	typedef _Reference reference;
	};

template<class _Category,
	class _Ty,
	class _Diff = ptrdiff_t,
	class _Pointer = _Ty *,
	class _Reference = _Ty&,
	class _Base_class = _Iterator_base>
		struct _Iterator_with_base
			: public _Base_class

	{	
	typedef _Category iterator_category;
	typedef _Ty value_type;
	typedef _Diff difference_type;
	typedef _Diff distance_type;	
	typedef _Pointer pointer;
	typedef _Reference reference;
	};

template<class _Ty,
	class _Diff,
	class _Pointer,
	class _Reference>
	struct _Bidit
		: public _Iterator_with_base<bidirectional_iterator_tag,
			_Ty, _Diff, _Pointer, _Reference>
	{	
	};

template<class _Ty,
	class _Diff,
	class _Pointer,
	class _Reference>
	struct _Ranit
		: public _Iterator_with_base<random_access_iterator_tag,
			_Ty, _Diff, _Pointer, _Reference>
	{	
	};

template<class _Ty,
	class _Diff,
	class _Pointer,
	class _Reference,
	class _Base_class>
	struct _Ranit_base
		: public _Base_class

	{	
	typedef random_access_iterator_tag iterator_category;
	typedef _Ty value_type;
	typedef _Diff difference_type;
	typedef _Diff distance_type;	
	typedef _Pointer pointer;
	typedef _Reference reference;
	};

struct _Outit
	: public iterator<output_iterator_tag, void, void,
		void, void>
	{	
	};

		
template<class _Iter>
	struct iterator_traits
	{	
	typedef typename _Iter::iterator_category iterator_category;
	typedef typename _Iter::value_type value_type;
	typedef typename _Iter::difference_type difference_type;
	typedef difference_type distance_type;	
	typedef typename _Iter::pointer pointer;
	typedef typename _Iter::reference reference;
	};

template<class _Ty>
	struct iterator_traits<_Ty *>
	{	
	typedef random_access_iterator_tag iterator_category;
	typedef _Ty value_type;
	typedef ptrdiff_t difference_type;
	typedef ptrdiff_t distance_type;	
	typedef _Ty *pointer;
	typedef _Ty& reference;
	};

template<class _Ty>
	struct iterator_traits<const _Ty *>
	{	
	typedef random_access_iterator_tag iterator_category;
	typedef _Ty value_type;
	typedef ptrdiff_t difference_type;
	typedef ptrdiff_t distance_type;	
	typedef const _Ty *pointer;
	typedef const _Ty& reference;
	};

template<> struct iterator_traits<_Bool>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef _Bool value_type;
	typedef _Bool difference_type;
	typedef _Bool distance_type;
	typedef _Bool * pointer;
	typedef _Bool& reference;
	};

template<> struct iterator_traits<char>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef char value_type;
	typedef char difference_type;
	typedef char distance_type;
	typedef char * pointer;
	typedef char& reference;
	};

template<> struct iterator_traits<signed char>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef signed char value_type;
	typedef signed char difference_type;
	typedef signed char distance_type;
	typedef signed char * pointer;
	typedef signed char& reference;
	};

template<> struct iterator_traits<unsigned char>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef unsigned char value_type;
	typedef unsigned char difference_type;
	typedef unsigned char distance_type;
	typedef unsigned char * pointer;
	typedef unsigned char& reference;
	};

 
template<> struct iterator_traits<wchar_t>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef wchar_t value_type;
	typedef wchar_t difference_type;
	typedef wchar_t distance_type;
	typedef wchar_t * pointer;
	typedef wchar_t& reference;
	};
 #line 845 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

template<> struct iterator_traits<short>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef short value_type;
	typedef short difference_type;
	typedef short distance_type;
	typedef short * pointer;
	typedef short& reference;
	};

template<> struct iterator_traits<unsigned short>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef unsigned short value_type;
	typedef unsigned short difference_type;
	typedef unsigned short distance_type;
	typedef unsigned short * pointer;
	typedef unsigned short& reference;
	};

template<> struct iterator_traits<int>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef int value_type;
	typedef int difference_type;
	typedef int distance_type;	
	typedef int * pointer;
	typedef int& reference;
	};

template<> struct iterator_traits<unsigned int>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef unsigned int value_type;
	typedef unsigned int difference_type;
	typedef unsigned int distance_type;	
	typedef unsigned int * pointer;
	typedef unsigned int& reference;
	};

template<> struct iterator_traits<long>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef long value_type;
	typedef long difference_type;
	typedef long distance_type;	
	typedef long * pointer;
	typedef long& reference;
	};

template<> struct iterator_traits<unsigned long>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef unsigned long value_type;
	typedef unsigned long difference_type;
	typedef unsigned long distance_type;	
	typedef unsigned long * pointer;
	typedef unsigned long& reference;
	};

template<> struct iterator_traits<double>
	{
	typedef _Float_iterator_tag iterator_category;
	typedef double value_type;
	typedef double difference_type;
	typedef double distance_type;	
	typedef double * pointer;
	typedef double& reference;
	};

template<> struct iterator_traits<float>
	{
	typedef _Float_iterator_tag iterator_category;
	typedef float value_type;
	typedef float difference_type;
	typedef float distance_type;	
	typedef float * pointer;
	typedef float& reference;
	};

 
template<> struct iterator_traits<__int64>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef __int64 value_type;
	typedef __int64 difference_type;
	typedef __int64 distance_type;	
	typedef __int64 * pointer;
	typedef __int64& reference;
	};

template<> struct iterator_traits<unsigned __int64>
	{	
	typedef _Int_iterator_tag iterator_category;
	typedef unsigned __int64 value_type;
	typedef unsigned __int64 difference_type;
	typedef unsigned __int64 distance_type;	
	typedef unsigned __int64 * pointer;
	typedef unsigned __int64& reference;
	};
 #line 947 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _Iter> inline
	typename iterator_traits<_Iter>::iterator_category
		__cdecl _Iter_cat(const _Iter&)
	{	
	typename iterator_traits<_Iter>::iterator_category _Cat;
	return (_Cat);
	}

		
		
		
template<class _Cat1, class _Cat2>
	class _Iter_random_helper
	{
	public:
		typedef forward_iterator_tag _Iter_random_cat;
	};

template<>
	class _Iter_random_helper<random_access_iterator_tag, random_access_iterator_tag>
	{
	public:
		typedef random_access_iterator_tag _Iter_random_cat;
	};

template<class _Cat1, class _Cat2, class _Cat3>
	class _Iter_random_helper3
	{
	public:
		typedef forward_iterator_tag _Iter_random_cat;
	};

template<>
	class _Iter_random_helper3<random_access_iterator_tag, random_access_iterator_tag, random_access_iterator_tag>
	{
	public:
		typedef random_access_iterator_tag _Iter_random_cat;
	};

template<class _Iter1, class _Iter2> inline
	typename _Iter_random_helper<
		typename iterator_traits<_Iter1>::iterator_category,
		typename iterator_traits<_Iter2>::iterator_category>::_Iter_random_cat
		__cdecl _Iter_random(const _Iter1&, const _Iter2&)
	{	
	typename _Iter_random_helper<
		iterator_traits<_Iter1>::iterator_category, 
		iterator_traits<_Iter2>::iterator_category>::_Iter_random_cat _Cat;
	return (_Cat);
	}

template<class _Iter1, class _Iter2, class _Iter3> inline
	typename _Iter_random_helper3<
		typename iterator_traits<_Iter1>::iterator_category,
		typename iterator_traits<_Iter2>::iterator_category,
		typename iterator_traits<_Iter3>::iterator_category>::_Iter_random_cat
		__cdecl _Iter_random(const _Iter1&, const _Iter2&, const _Iter3&)
	{	
	typename _Iter_random_helper3<
		iterator_traits<_Iter1>::iterator_category, 
		iterator_traits<_Iter2>::iterator_category,
		iterator_traits<_Iter3>::iterator_category>::_Iter_random_cat _Cat;
	return (_Cat);
	}

		
		
	template <bool _Cond, class _Ty1, class _Ty2>
	class _If
	{
	public:
		typedef _Ty2 _Result;
	};

	template <class _Ty1, class _Ty2>
	class _If<true, _Ty1, _Ty2>
	{
	public:
		typedef _Ty1 _Result;
	};

		
	template <bool _Secure_validation>
	class _Secure_validation_helper
	{
	public:
		typedef _Unchecked_iterator_tag _Checked_iterator_category;
	};

	template <>
	class _Secure_validation_helper<true>
	{
	public:
		typedef _Range_checked_iterator_tag _Checked_iterator_category;
	};


		
	template <class _Iter, bool _Inherits_from_iterator_base>
	class _Checked_iterator_category_helper
	{
	public:
		typedef _Unchecked_iterator_tag _Checked_cat;
	};

	template <class _Iter>
	class _Checked_iterator_category_helper<_Iter, true>
	{
	public:
		typedef typename _Iter::_Checked_iterator_category _Checked_cat;
	};

	template <class _Iter>
	class _Checked_iterator_category
	{
	public:
		typedef typename _Checked_iterator_category_helper<_Iter, __is_base_of(_Iterator_base_universal, _Iter)>::_Checked_cat _Checked_cat;
	};

	template<class _Iter> 
	inline
	typename _Checked_iterator_category<_Iter>::_Checked_cat _Checked_cat(const _Iter&)
	{
		typename _Checked_iterator_category<_Iter>::_Checked_cat _Cat;
		return (_Cat);
	}

		
	template <class _Iter, bool _Inherits_from_iterator_base>
	class _Checked_iterator_base_helper2
	{
	public:
		typedef _Unchanged_checked_iterator_base_type_tag _Checked_iterator_base_type;
	};

	template <class _Iter>
	class _Checked_iterator_base_helper2<_Iter, true>
	{
	public:
		typedef typename _Iter::_Checked_iterator_base_type _Checked_iterator_base_type;
	};

	template <class _Iter, class _Base_type>
	class _Checked_iterator_base_helper1
	{
	public:
		typedef _Different_checked_iterator_base_type_tag _Base_type_tag;
		typedef _Base_type _Checked_iterator_base_type;
	};

	template <class _Iter>
	class _Checked_iterator_base_helper1<_Iter, _Unchanged_checked_iterator_base_type_tag>
	{
	public:
		typedef _Unchanged_checked_iterator_base_type_tag _Base_type_tag;
		typedef _Iter _Checked_iterator_base_type;
	};

	template <class _Iter>
	class _Checked_iterator_base_helper
	{
	public:
		typedef _Checked_iterator_base_helper2<_Iter, __is_base_of(_Iterator_base_universal, _Iter)> _Base_helper2;
		typedef _Checked_iterator_base_helper1<_Iter, typename  _Base_helper2::_Checked_iterator_base_type > _Base_helper1;

		typedef typename _Base_helper1::_Base_type_tag _Checked_iterator_base_type_tag;
		typedef typename _Base_helper1::_Checked_iterator_base_type _Checked_iterator_base_type;
	};

	template<class _Iter, class _Base_tag>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(const _Iter &_It, _Base_tag)
	{
		return _It._Checked_iterator_base();
	}

	template<class _Iter>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(const _Iter &_It, _Unchanged_checked_iterator_base_type_tag)
	{
		return _It;
	}

	template<class _Iter, class _Base_tag>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(_Iter &_It, _Base_tag)
	{
		return _It._Checked_iterator_base();
	}

	template<class _Iter>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(_Iter &_It, _Unchanged_checked_iterator_base_type_tag)
	{
		return _It;
	}

	template<class _Iter>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(const _Iter &_It)
	{
		typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type_tag _Base_tag;
		return _Checked_base(_It, _Base_tag);
	}

	template<class _Iter>
	inline
	typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type
		__cdecl _Checked_base(_Iter &_It)
	{
		typename _Checked_iterator_base_helper<_Iter>::_Checked_iterator_base_type_tag _Base_tag;
		return _Checked_base(_It, _Base_tag);
	}

		

	template<class _DstIter, class _BaseIter>
	inline
	void __cdecl _Checked_assign_from_base(_DstIter &_Dest, const _BaseIter &_Src)
	{
		_Dest._Checked_iterator_assign_from_base(_Src);
	}

	template<class _Iter>
	inline
	void __cdecl _Checked_assign_from_base(_Iter &_Dest, const _Iter &_Src)
	{
		_Dest = _Src;
	}

		
 
 
 #line 1188 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	
	template <class _Value>
	class _Move_operation_category
	{
	public:
		typedef _Undefined_move_tag _Move_cat;
	};

	template<class _Iter>
	inline
		typename _Move_operation_category<typename iterator_traits<_Iter>::value_type>::_Move_cat _Move_cat(const _Iter&)
	{
		typename _Move_operation_category<typename iterator_traits<_Iter>::value_type>::_Move_cat _Cat;
		return (_Cat);
	}

		
template<class _T1, class _T2, class _Checked_Cat1, class _Checked_Cat2>
struct _Ptr_cat_with_checked_cat_helper
	{
	typedef _Nonscalar_ptr_iterator_tag _Ptr_cat;
	};

template<class _T1,	class _T2>
struct _Ptr_cat_helper
	{
	typedef typename _Ptr_cat_with_checked_cat_helper<_T1, _T2, 
		typename _Checked_iterator_category<_T1>::_Checked_cat,
		typename _Checked_iterator_category<_T2>::_Checked_cat>::_Ptr_cat _Ptr_cat;
	};

template<class _T1,	class _T2, class _Checked_Cat1>
struct _Ptr_cat_with_checked_cat_helper<_T1, _T2, _Checked_Cat1, _Range_checked_iterator_tag>
	{
	typedef typename _Ptr_cat_helper<_T1, typename _T2::_Inner_type>::_Ptr_cat _Ptr_cat;
	};

template<class _T1,	class _T2, class _Checked_Cat2>
struct _Ptr_cat_with_checked_cat_helper<_T1, _T2, _Range_checked_iterator_tag, _Checked_Cat2>
	{
	typedef typename _Ptr_cat_helper<typename _T1::_Inner_type, _T2>::_Ptr_cat _Ptr_cat;
	};

template<class _T1,	class _T2>
struct _Ptr_cat_with_checked_cat_helper<_T1, _T2, _Range_checked_iterator_tag, _Range_checked_iterator_tag>
	{
	typedef typename _Ptr_cat_helper<typename _T1::_Inner_type, typename _T2::_Inner_type>::_Ptr_cat _Ptr_cat;
	};

template<class _T1>
struct _Ptr_cat_helper<_T1, _Undefined_inner_type_tag>
	{
	typedef _Nonscalar_ptr_iterator_tag _Ptr_cat;
	};

template<class _T2>
struct _Ptr_cat_helper<_Undefined_inner_type_tag, _T2>
	{
	typedef _Nonscalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<_Undefined_inner_type_tag, _Undefined_inner_type_tag>
	{
	typedef _Nonscalar_ptr_iterator_tag _Ptr_cat;
	};

		
template<>
struct _Ptr_cat_helper<_Bool *, _Bool *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const _Bool *, _Bool *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<char *, char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const char *, char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<signed char *, signed char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const signed char *, signed char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<unsigned char *, unsigned char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const unsigned char *, unsigned char *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

 

template<>
struct _Ptr_cat_helper<wchar_t *, wchar_t *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const wchar_t *, wchar_t *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

 #line 1320 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
template<>
struct _Ptr_cat_helper<short *, short *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const short *, short *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<unsigned short *, unsigned short *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const unsigned short *, unsigned short *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<int *, int *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const int *, int *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<unsigned int *, unsigned int *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const unsigned int *, unsigned int *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<long *, long *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const long *, long *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<unsigned long *, unsigned long *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const unsigned long *, unsigned long *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<float *, float *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const float *, float *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<double *, double *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const double *, double *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<long double *, long double *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const long double *, long double *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

 

template<>
struct _Ptr_cat_helper<__int64 *, __int64 *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const __int64 *, __int64 *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<unsigned __int64 *, unsigned __int64 *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<>
struct _Ptr_cat_helper<const unsigned __int64 *, unsigned __int64 *>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

 #line 1455 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

template<class _Ty>
struct _Ptr_cat_helper<_Ty **, _Ty **>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<class _Ty>
struct _Ptr_cat_helper<_Ty **, const _Ty **>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<class _Ty>
struct _Ptr_cat_helper<_Ty *const *, _Ty **>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};

template<class _Ty>
struct _Ptr_cat_helper<_Ty *const *, const _Ty **>
	{	
	typedef _Scalar_ptr_iterator_tag _Ptr_cat;
	};


template<class _T1, class _T2> inline 
typename _Ptr_cat_helper<_T1, _T2>::_Ptr_cat __cdecl _Ptr_cat(_T1&, _T2&)
	{
	typename _Ptr_cat_helper<_T1, _T2>::_Ptr_cat _Cat;
	return (_Cat);
	}


 
#line 1491 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"


 
#line 1495 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

 
		
  





 



 

 
 
  
 #line 1514 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

 

 


 
  
 #line 1523 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

 

 


		
template<class _InIt> inline
	void __cdecl _Debug_pointer(_InIt&, const wchar_t *, unsigned int)
	{	
	}

template<class _Ty> inline
	void __cdecl _Debug_pointer(const _Ty *_First, const wchar_t *_File, unsigned int _Line)
	{	
	if (_First == 0)
		_Debug_message(L"invalid null pointer", _File, _Line);
	}

template<class _Ty> inline
	void __cdecl _Debug_pointer(_Ty *_First, const wchar_t *_File, unsigned int _Line)
	{	
	if (_First == 0)
		_Debug_message(L"invalid null pointer", _File, _Line);
	}

		
template<class _InIt> inline
	void __cdecl _Debug_range2(_InIt, _InIt, const wchar_t *, unsigned int ,
		input_iterator_tag)
	{	
	}

template<class _RanIt> inline
	void __cdecl _Debug_range2(_RanIt _First, _RanIt _Last, const wchar_t *_File, unsigned int _Line,
		random_access_iterator_tag)
	{	
	if (_First != _Last)
		{	
		_Debug_pointer(_First, _File, _Line);
		_Debug_pointer(_Last, _File, _Line);
		if (_Last < _First)
			_Debug_message(L"invalid iterator range", _File, _Line);
		}
	}

template<class _InIt> inline
	void __cdecl _Debug_range(_InIt _First, _InIt _Last, const wchar_t *_File, unsigned int _Line)
	{	
	_Debug_range2(_First, _Last, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt> inline
	void __cdecl _Debug_order2(_InIt _First, _InIt _Last,
		const wchar_t *_File, unsigned int _Line, input_iterator_tag)
	{	
	}

template<class _FwdIt> inline
	void __cdecl _Debug_order2(_FwdIt _First, _FwdIt _Last,
		const wchar_t *_File, unsigned int _Line, forward_iterator_tag)
	{	
	if (_First != _Last)
		for (_FwdIt _Next = _First; ++_Next != _Last; ++_First)
			if (_Debug_lt(*_Next, *_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 1588))
				_Debug_message(L"sequence not ordered", _File, _Line);
	}

template<class _InIt> inline
	void __cdecl _Debug_order(_InIt _First, _InIt _Last,
		const wchar_t *_File, unsigned int _Line)
	{	
	_Debug_range(_First, _Last, _File, _Line);
	_Debug_order2(_First, _Last, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt,
	class _Pr> inline
	void __cdecl _Debug_order2(_InIt _First, _InIt _Last, _Pr _Pred,
		const wchar_t *_File, unsigned int _Line, input_iterator_tag)
	{	
	}

template<class _FwdIt,
	class _Pr> inline
	void __cdecl _Debug_order2(_FwdIt _First, _FwdIt _Last, _Pr _Pred,
		const wchar_t *_File, unsigned int _Line, forward_iterator_tag)
	{	
	if (_First != _Last)
		for (_FwdIt _Next = _First; ++_Next != _Last; ++_First)
			if (_Debug_lt_pred(_Pred, *_Next, *_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 1615))
				_Debug_message(L"sequence not ordered", _File, _Line);
	}

template<class _InIt,
	class _Pr> inline
	void __cdecl _Debug_order(_InIt _First, _InIt _Last, _Pr _Pred,
		const wchar_t *_File, unsigned int _Line)
	{	
	_Debug_range(_First, _Last, _File, _Line);
	_Debug_pointer(_Pred, _File, _Line);
	_Debug_order2(_First, _Last, _Pred, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt> inline
	void __cdecl _Debug_order_single2(_InIt _First, _InIt _Last, bool _IsFirstIteration,
		const wchar_t *_File, unsigned int _Line, input_iterator_tag)
	{	
	}

template<class _FwdIt> inline
	void __cdecl _Debug_order_single2(_FwdIt _First, _FwdIt _Last, bool ,
		const wchar_t *_File, unsigned int _Line, forward_iterator_tag)
	{	
	if (_First != _Last)
		{
		_FwdIt _Next = _First;
		if (++_Next != _Last)
			if (_Debug_lt(*_Next, *_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 1644))
				_Debug_message(L"sequence not ordered", _File, _Line);
		}
	}

template<class _InIt> inline
	void __cdecl _Debug_order_single(_InIt _First, _InIt _Last, bool _IsFirstIteration,
		const wchar_t *_File, unsigned int _Line)
	{	
	_Debug_order_single2(_First, _Last, _IsFirstIteration, _File, _Line, _Iter_cat(_First));
	}

		
template<class _InIt,
	class _Pr> inline
	void __cdecl _Debug_order_single2(_InIt _First, _InIt _Last, _Pr _Pred, bool _IsFirstIteration,
		const wchar_t *_File, unsigned int _Line, input_iterator_tag)
	{	
	}

template<class _FwdIt,
	class _Pr> inline
	void __cdecl _Debug_order_single2(_FwdIt _First, _FwdIt _Last, _Pr _Pred, bool _IsFirstIteration,
		const wchar_t *_File, unsigned int _Line, forward_iterator_tag)
	{	
	if (_First != _Last)
		{
		_FwdIt _Next = _First;
		if (++_Next != _Last)
			if (_Debug_lt_pred(_Pred, *_Next, *_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 1673))
				_Debug_message(L"sequence not ordered", _File, _Line);
		}
	}

template<class _InIt,
	class _Pr> inline
	void __cdecl _Debug_order_single(_InIt _First, _InIt _Last, _Pr _Pred, bool _IsFirstIteration,
		const wchar_t *_File, unsigned int _Line)
	{	
	_Debug_order_single2(_First, _Last, _Pred, _IsFirstIteration, _File, _Line, _Iter_cat(_First));
	}

 








#line 1696 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


  
  
  
  
  
  
  
  

 






#line 1734 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		

template<class _Iter> inline
	typename iterator_traits<_Iter>::value_type *__cdecl _Val_type(_Iter)
	{	
	return (0);
	}

		
template<class _InIt,
	class _Diff> inline
	void __cdecl advance(_InIt& _Where, _Diff _Off)
	{	
	_Advance(_Where, _Off, _Iter_cat(_Where));
	}

template<class _InIt,
	class _Diff> inline
	void __cdecl _Advance(_InIt& _Where, _Diff _Off, input_iterator_tag)
	{	

 


 #line 1760 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	for (; 0 < _Off; --_Off)
		++_Where;
	}

template<class _FI,
	class _Diff> inline
	void __cdecl _Advance(_FI& _Where, _Diff _Off, forward_iterator_tag)
	{	

 


 #line 1774 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	for (; 0 < _Off; --_Off)
		++_Where;
	}

#pragma warning(push)
#pragma warning(disable: 6295)
template<class _BI,
	class _Diff> inline
	void __cdecl _Advance(_BI& _Where, _Diff _Off, bidirectional_iterator_tag)
	{	
	for (; 0 < _Off; --_Off)
		++_Where;
	for (; _Off < 0; ++_Off)
		--_Where;
	}
#pragma warning(pop)

template<class _RI,
	class _Diff> inline
	void __cdecl _Advance(_RI& _Where, _Diff _Off, random_access_iterator_tag)
	{	
	_Where += _Off;
	}

		

template<class _Iter> inline
	typename iterator_traits<_Iter>::difference_type
		* __cdecl _Dist_type(_Iter)
	{	
	return (0);
	}

		
template<class _InIt,
	class _Diff> inline
		void __cdecl _Distance2(_InIt _First, _InIt _Last, _Diff& _Off,
			input_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _FwdIt,
	class _Diff> inline
		void __cdecl _Distance2(_FwdIt _First, _FwdIt _Last, _Diff& _Off,
			forward_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _BidIt,
	class _Diff> inline
		void __cdecl _Distance2(_BidIt _First, _BidIt _Last, _Diff& _Off,
			bidirectional_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		++_Off;
	}

template<class _RanIt,
	class _Diff> inline
		void __cdecl _Distance2(_RanIt _First, _RanIt _Last, _Diff& _Off,
			random_access_iterator_tag)
	{	

 
	if (_First != _Last)
		{	
		_Debug_pointer(_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",1845);
		_Debug_pointer(_Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",1846);
		}
 #line 1849 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	_Off += _Last - _First;
	}

template<class _InIt> inline
	typename iterator_traits<_InIt>::difference_type
		__cdecl distance(_InIt _First, _InIt _Last)
	{	
	typename iterator_traits<_InIt>::difference_type _Off = 0;
	_Distance2(_First, _Last, _Off, _Iter_cat(_First));
	return (_Off);
	}


template<class _InIt,
	class _Diff> inline
		void __cdecl _Distance(_InIt _First, _InIt _Last, _Diff& _Off)
	{	
	_Distance2(_First, _Last, _Off, _Iter_cat(_First));
	}

		
template<class _RanIt,
	class _Base>
	class _Revranit
		: public _Base
	{	
public:
	typedef _Revranit<_RanIt, _Base> _Myt;
	typedef typename iterator_traits<_RanIt>::iterator_category iterator_category;
	typedef typename iterator_traits<_RanIt>::value_type value_type;
	typedef typename iterator_traits<_RanIt>::difference_type difference_type;
	typedef typename iterator_traits<_RanIt>::difference_type distance_type;	
	typedef typename iterator_traits<_RanIt>::pointer pointer;
	typedef typename iterator_traits<_RanIt>::reference reference;
	typedef _RanIt iterator_type;

	 _Revranit()
		{	
		}

	explicit  _Revranit(_RanIt _Right)
		: current(_Right)
		{	
		}

	template<class _RanIt2,
		class _Base2>
		_Revranit(const _Revranit<_RanIt2, _Base2>& _Right)
		: current(_Right.base())
		{	
		}

	_RanIt  base() const
		{	
		return (current);
		}

	reference  operator*() const
		{	
		_RanIt _Tmp = current;
		return (*--_Tmp);
		}

	pointer  operator->() const
		{	
		return (&**this);
		}

	_Myt&  operator++()
		{	
		--current;
		return (*this);
		}

	_Myt  operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt&  operator--()
		{	
		++current;
		return (*this);
		}

	_Myt  operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	template<class _RanIt2,
		class _Base2>
		bool  _Equal(const _Revranit<_RanIt2, _Base2>& _Right) const
		{	
		return (current == _Right.base());
		}



	_Myt&  operator+=(difference_type _Off)
		{	
		current -= _Off;
		return (*this);
		}

	_Myt  operator+(difference_type _Off) const
		{	
		return (_Myt(current - _Off));
		}

	_Myt&  operator-=(difference_type _Off)
		{	
		current += _Off;
		return (*this);
		}

	_Myt  operator-(difference_type _Off) const
		{	
		return (_Myt(current + _Off));
		}

	reference  operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	template<class _RanIt2,
		class _Base2>
		bool  _Less(const _Revranit<_RanIt2, _Base2>& _Right) const
		{	
		return (_Right.base() < current);
		}

	template<class _RanIt2,
		class _Base2>
		difference_type  _Minus(const _Revranit<_RanIt2, _Base2>& _Right) const
		{	
		return (_Right.base() - current);
		}

protected:
	_RanIt current;	
	};

		
template<class _RanIt,
	class _Base,
	class _Diff> inline
	_Revranit<_RanIt, _Base>
		operator+(_Diff _Off,
		const _Revranit<_RanIt, _Base>& _Right)
	{	
	return (_Right + _Off);
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	typename _Base1::difference_type operator-(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Left._Minus(_Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator==(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Left._Equal(_Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator!=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator<(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Left._Less(_Right));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator>(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator<=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _RanIt1,
	class _Base1,
	class _RanIt2,
	class _Base2> inline
	bool operator>=(
		const _Revranit<_RanIt1, _Base1>& _Left,
		const _Revranit<_RanIt2, _Base2>& _Right)
	{	
	return (!(_Left < _Right));
	}

		
template<class _RanIt>
	class reverse_iterator
		: public _Revranit<_RanIt, iterator<
			typename iterator_traits<_RanIt>::iterator_category,
			typename iterator_traits<_RanIt>::value_type,
			typename iterator_traits<_RanIt>::difference_type,
			typename iterator_traits<_RanIt>::pointer,
			typename iterator_traits<_RanIt>::reference> >
	{	
	typedef reverse_iterator<_RanIt> _Myt;
	typedef _Revranit<_RanIt, iterator<
			typename iterator_traits<_RanIt>::iterator_category,
			typename iterator_traits<_RanIt>::value_type,
			typename iterator_traits<_RanIt>::difference_type,
			typename iterator_traits<_RanIt>::pointer,
			typename iterator_traits<_RanIt>::reference> > _Mybase;

public:
	typedef typename iterator_traits<_RanIt>::iterator_category iterator_category;
	typedef typename iterator_traits<_RanIt>::value_type value_type;
	typedef typename iterator_traits<_RanIt>::difference_type difference_type;
	typedef typename iterator_traits<_RanIt>::difference_type distance_type;	
	typedef typename iterator_traits<_RanIt>::pointer pointer;
	typedef typename iterator_traits<_RanIt>::reference reference;
	typedef _RanIt iterator_type;

	 reverse_iterator()
		{	
		}

	explicit  reverse_iterator(_RanIt _Right)
		: _Mybase(_Right)
		{	
		}

	template<class _Other>
		 reverse_iterator(const reverse_iterator<_Other>& _Right)
		: _Mybase(_Right.base())
		{	
		}

	 reverse_iterator(_Mybase _Right)
		: _Mybase(_Right)
		{	
		}


	typedef typename ::std:: _Checked_iterator_category<_RanIt>::_Checked_cat _Checked_iterator_category;
	typedef reverse_iterator<typename _Checked_iterator_base_helper<_RanIt>::_Checked_iterator_base_type> _Checked_iterator_base_type;
 
	_Checked_iterator_base_type _Checked_iterator_base() const
	{
		typename _Checked_iterator_base_type _Base(::std:: _Checked_base(this->current));
		return _Base;
	}

	void _Checked_iterator_assign_from_base(_Checked_iterator_base_type _Base)
	{
		::std:: _Checked_assign_from_base(this->current, _Base.base());
	}
#line 2148 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	_Myt& operator++()
		{	
		++*((_Mybase *)this);
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myt& operator--()
		{	
		--*((_Mybase *)this);
		return (*this);
		}

	_Myt operator--(int)
		{	
		_Myt _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myt& operator+=(difference_type _Off)
		{	
		*((_Mybase *)this) += _Off;
		return (*this);
		}

	_Myt operator+(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt& operator-=(difference_type _Off)
		{	
		*((_Mybase *)this) -= _Off;
		return (*this);
		}

	_Myt operator-(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}
	};

		
template<class _RanIt,
	class _Diff> inline
	reverse_iterator<_RanIt> __cdecl operator+(_Diff _Off,
		const reverse_iterator<_RanIt>& _Right)
	{	
	return (_Right + _Off);
	}

template<class _RanIt1,
	class _RanIt2> inline
	typename reverse_iterator<_RanIt1>::difference_type
		__cdecl operator-(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Left._Minus(_Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator==(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Left._Equal(_Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator!=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator<(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Left._Less(_Right));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator>(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator<=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _RanIt1,
	class _RanIt2> inline
	bool __cdecl operator>=(const reverse_iterator<_RanIt1>& _Left,
		const reverse_iterator<_RanIt2>& _Right)
	{	
	return (!(_Left < _Right));
	}

		
template<class _BidIt,
	class _Ty,
	class _Reference = _Ty&,
	class _Pointer = _Ty *,
	class _Diff = ptrdiff_t>
	class reverse_bidirectional_iterator
		: public iterator<bidirectional_iterator_tag, _Ty, _Diff,
			_Pointer, _Reference>
	{	
public:
	typedef reverse_bidirectional_iterator<_BidIt, _Ty, _Reference,
		_Pointer, _Diff> _Myt;
	typedef _BidIt iterator_type;

	 reverse_bidirectional_iterator()
		{	
		}

	explicit  reverse_bidirectional_iterator(_BidIt _Right)
		: current(_Right)
		{	
		}

	_BidIt  base() const
		{	
		return (current);
		}

	_Reference  operator*() const
		{	
		_BidIt _Tmp = current;
		return (*--_Tmp);
		}

	_Pointer  operator->() const
		{	
		_Reference _Tmp = **this;
		return (&_Tmp);
		}

	_Myt&  operator++()
		{	
		--current;
		return (*this);
		}

	_Myt  operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt&  operator--()
		{	
		++current;
		return (*this);
		}

	_Myt  operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	bool  operator==(const _Myt& _Right) const
		{	
		return (current == _Right.current);
		}

	bool  operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

protected:
	_BidIt current;	
	};

		
template<class _BidIt,
	class _BidIt2 = _BidIt>
	class _Revbidit
		: public iterator<
			typename iterator_traits<_BidIt>::iterator_category,
			typename iterator_traits<_BidIt>::value_type,
			typename iterator_traits<_BidIt>::difference_type,
			typename iterator_traits<_BidIt>::pointer,
			typename iterator_traits<_BidIt>::reference>
	{	
public:
	typedef _Revbidit<_BidIt, _BidIt2> _Myt;
	typedef typename iterator_traits<_BidIt>::difference_type _Diff;
	typedef typename iterator_traits<_BidIt>::pointer _Pointer;
	typedef typename iterator_traits<_BidIt>::reference _Reference;
	typedef _BidIt iterator_type;

	 _Revbidit()
		{	
		}

	explicit  _Revbidit(_BidIt _Right)
		: current(_Right)
		{	
		}

	 _Revbidit(const _Revbidit<_BidIt2>& _Other)
		: current (_Other.base())
		{	
		}

	_BidIt  base() const
		{	
		return (current);
		}

	_Reference  operator*() const
		{	
		_BidIt _Tmp = current;
		return (*--_Tmp);
		}

	_Pointer  operator->() const
		{	
		_Reference _Tmp = **this;
		return (&_Tmp);
		}

	_Myt&  operator++()
		{	
		--current;
		return (*this);
		}

	_Myt  operator++(int)
		{	
		_Myt _Tmp = *this;
		--current;
		return (_Tmp);
		}

	_Myt&  operator--()
		{	
		++current;
		return (*this);
		}

	_Myt  operator--(int)
		{	
		_Myt _Tmp = *this;
		++current;
		return (_Tmp);
		}

	bool  operator==(const _Myt& _Right) const
		{	
		return (current == _Right.current);
		}

	bool  operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

protected:
	_BidIt current;
	};



		
template<class _InIt, class _OutIt, class _InOutItCat>
inline
	_OutIt __cdecl _Copy_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		_InOutItCat, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2444);
	for (; _First != _Last; ++_Dest, ++_First)
		*_Dest = *_First;
	return (_Dest);
	}


template<class _InIt, class _OutIt>
inline
	_OutIt __cdecl _Copy_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		random_access_iterator_tag, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	
	_OutIt _Result = _Dest + (_Last - _First);
	_Copy_opt(_First, _Last, ::std:: _Checked_base(_Dest), 
		forward_iterator_tag(), _Nonscalar_ptr_iterator_tag(), _Range_checked_iterator_tag());
	return _Result;
	}
#line 2463 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

template<class _InIt, class _OutIt, class _InOutItCat>
inline
	_OutIt __cdecl _Copy_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		_InOutItCat, _Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	

 
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2471);
	if (_First != _Last)
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2473);
 #line 2475 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	ptrdiff_t _Off = _Last - _First;	
	
	_OutIt _Result = _Dest + _Off;
	if (_Off > 0)
		::memmove_s((&*_Dest), (_Off * sizeof (*_First)), (&*_First), (_Off * sizeof (*_First)));
	return _Result;
	}

template <bool _Cond, class _Result_type>
struct _Enable_if;

template <class _Result_type>
struct _Enable_if<true, _Result_type>
{
	typedef _Result_type _Result;
};

template <class _Checked_iter_cat>
struct _Is_checked_iterator_helper
{
	enum { _Result = false };
};

template <>
struct _Is_checked_iterator_helper<_Range_checked_iterator_tag>
{
	enum { _Result = true };
};

template <class _Iter>
struct _Is_checked_iterator
{
	enum { _Result = 
		_Is_checked_iterator_helper<typename _Checked_iterator_category<_Iter>::_Checked_cat>::_Result };
};





















template<class _InIt, class _OutIt>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl copy(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return (_Copy_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, 
		_Iter_random(_First, _Dest), _Ptr_cat(_First, _Dest), _Range_checked_iterator_tag()));
	}

template<class _InIt, class _OutElem, size_t _Size>
inline
_OutElem* __cdecl copy(_InIt _First, _InIt _Last, _OutElem (&_Dest)[_Size])
	{	
	return copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), ::stdext:: make_checked_array_iterator(_Dest, _Size)).base();
	}

template<class _InIt, class _OutIt>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl copy(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return (_Copy_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, 
		_Iter_random(_First, _Dest), _Ptr_cat(_First, _Dest), _Range_checked_iterator_tag()));
	}











#line 2567 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt, class _OutIt, class _InOutItCat, class _MoveCatTy>
inline
	_OutIt __cdecl _Move_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		_InOutItCat _First_dest_cat, _MoveCatTy, _Range_checked_iterator_tag)
	{	
	return _Copy_opt(_First, _Last, _Dest,
		_First_dest_cat, _Ptr_cat(_First, _Dest), _Range_checked_iterator_tag());
	}

template<class _InIt, class _OutIt, class _InOutItCat>
inline
	_OutIt __cdecl _Move_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		_InOutItCat, _Swap_move_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2583);
	for (; _First != _Last; ++_Dest, ++_First)
		::std:: swap(*_Dest, *_First);
	return (_Dest);
	}


template<class _InIt, class _OutIt, class _InOutItCat>
inline
	_OutIt __cdecl _Move_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		random_access_iterator_tag, _Swap_move_tag _Move_cat, _Range_checked_iterator_tag)
	{	
	
	_OutIt _Result = _Dest + (_Last - _First);
	_Move_opt(_First, _Last, ::std:: _Checked_base(_Dest),
		forward_iterator_tag(), _Move_cat, _Range_checked_iterator_tag());
	return _Result;
	}
#line 2602 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _InIt, class _OutIt>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl _Move(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return _Move_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt, class _OutElem, size_t _Size>
inline
_OutElem* __cdecl _Move(_InIt _First, _InIt _Last, _OutElem (&_Dest)[_Size])
	{	
	return _Move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last),
		::stdext:: make_checked_array_iterator(_Dest, _Size)).base();
	}

template<class _InIt, class _OutIt>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl _Move(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return _Move_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}











#line 2641 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _BidIt1, class _BidIt2, class _InOutItCat>
inline
	_BidIt2 __cdecl _Copy_backward_opt(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest,
		_InOutItCat, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2648);
	while (_First != _Last)
		*--_Dest = *--_Last;
	return (_Dest);
	}


template<class _InIt, class _OutIt>
inline
	_OutIt __cdecl _Copy_backward_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		random_access_iterator_tag, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	
	_OutIt _Result = _Dest - (_Last - _First);
	_Copy_backward_opt(_First, _Last, ::std:: _Checked_base(_Dest),
		forward_iterator_tag(), _Nonscalar_ptr_iterator_tag(), _Range_checked_iterator_tag());
	return _Result;
	}
#line 2667 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

template<class _InIt, class _OutIt, class _InOutItCat>
inline
	_OutIt __cdecl _Copy_backward_opt(_InIt _First, _InIt _Last, _OutIt _Dest,
		_InOutItCat, _Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	

 
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2675);
	if (_First != _Last)
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2677);
 #line 2679 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	ptrdiff_t _Off = _Last - _First;	
	


	_OutIt _Result = _Dest - _Off;
	if (_Off > 0)
		::memmove_s((&*_Result), (_Off * sizeof (*_First)), (&*_First), (_Off * sizeof (*_First)));
	return _Result;
	}



template<class _BidIt1,
	class _BidIt2> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl copy_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return _Copy_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _BidIt1,
	class _BidIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl copy_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return _Copy_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag());
	}











#line 2720 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _BidIt1, class _BidIt2, class _InOutItCat, class _MoveCatTy>
inline
	_BidIt2 __cdecl _Move_backward_opt(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest,
		_InOutItCat _First_dest_cat, _MoveCatTy, _Range_checked_iterator_tag)
	{	
	return _Copy_backward_opt(_First, _Last, _Dest,
		_First_dest_cat, _Ptr_cat(_First, _Dest), _Range_checked_iterator_tag());
	}

template<class _BidIt1, class _BidIt2, class _InOutItCat>
inline
	_BidIt2 __cdecl _Move_backward_opt(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest,
		_InOutItCat, _Swap_move_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2736);
	while (_First != _Last)
		::std:: swap(*--_Dest, *--_Last);
	return (_Dest);
	}


template<class _BidIt1, class _BidIt2>
inline
	_BidIt2 __cdecl _Move_backward_opt(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest,
		random_access_iterator_tag, _Swap_move_tag _Move_cat, _Range_checked_iterator_tag)
	{	
	
	_BidIt2 _Result = _Dest - (_Last - _First);
	_Move_backward_opt(_First, _Last, ::std:: _Checked_base(_Dest),
		forward_iterator_tag(), _Move_cat, _Range_checked_iterator_tag());
	return _Result;
	}
#line 2755 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _BidIt1, class _BidIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl _Move_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return _Move_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _BidIt1, class _BidIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl _Move_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return _Move_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Iter_random(_First, _Dest), _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}











#line 2786 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1, class _InIt2, class _InItCats>
inline
	pair<_InIt1, _InIt2>
		__cdecl _Mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2,
			_InItCats, _Range_checked_iterator_tag)
	{	

 
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2796);
	if (_First1 != _Last1)
		_Debug_pointer(_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2798);
 #line 2800 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	for (; _First1 != _Last1 && *_First1 == *_First2; )
		++_First1, ++_First2;
	return (pair<_InIt1, _InIt2>(_First1, _First2));
	}


template<class _InIt1, class _InIt2>
inline
	pair<_InIt1, _InIt2>
		__cdecl _Mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2,
			random_access_iterator_tag, _Range_checked_iterator_tag)
	{	
	
	_InIt2 _Last2 = _First2 + (_Last1 - _First1); (_Last2);
	pair<_InIt1, typename ::std:: _Checked_iterator_base_helper<_InIt2>::_Checked_iterator_base_type> _Result =
		_Mismatch(_First1, _Last1, ::std:: _Checked_base(_First2),
			forward_iterator_tag(), _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First2, _Result.second);
	return (pair<_InIt1, _InIt2>(_Result.first, _First2));
	}
#line 2822 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _InIt1, class _InIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		_Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
			_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InElem2, size_t _Size>
inline
pair<_InIt1, _InElem2*>
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size])
	{	
	pair<_InIt1, ::stdext:: checked_array_iterator<_InElem2*> > _Result =
		mismatch(_First1, _Last1, ::stdext:: make_checked_array_iterator(_First2, _Size));
	return (pair<_InIt1, _InElem2*>(_Result.first, _Result.second.base()));
	}

template<class _InIt1, class _InIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		_Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
			_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (pair<_InIt1, _InIt2>(_First1, _Result.second));
	}












#line 2872 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1, class _InIt2, class _Pr, class _InItCats>
inline
	pair<_InIt1, _InIt2>
		__cdecl _Mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred,
			_InItCats, _Range_checked_iterator_tag)
	{	

 
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2882);
	if (_First1 != _Last1)
		_Debug_pointer(_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2884);
	_Debug_pointer(_Pred, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2885);
 #line 2887 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	for (; _First1 != _Last1 && _Pred(*_First1, *_First2); )
		++_First1, ++_First2;
	return (pair<_InIt1, _InIt2>(_First1, _First2));
	}


template<class _InIt1, class _InIt2, class _Pr>
inline
	pair<_InIt1, _InIt2>
		__cdecl _Mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred,
			random_access_iterator_tag, _Range_checked_iterator_tag)
	{	
	
	_InIt2 _Last2 = _First2 + (_Last1 - _First1); (_Last2);
	pair<_InIt1, typename ::std:: _Checked_iterator_base_helper<_InIt2>::_Checked_iterator_base_type> _Result =
		_Mismatch(_First1, _Last1, ::std:: _Checked_base(_First2), _Pred,
			forward_iterator_tag(), _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First2, _Result.second);
	return (pair<_InIt1, _InIt2>(_Result.first, _First2));
	}
#line 2909 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _InIt1, class _InIt2, class _Pr>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		_Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
			_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InElem2, class _Pr, size_t _Size>
inline
pair<_InIt1, _InElem2*>
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size], _Pr _Pred)
	{	
	pair<_InIt1, ::stdext:: checked_array_iterator<_InElem2*> > _Result =
		mismatch(_First1, _Last1, ::stdext:: make_checked_array_iterator(_First2, _Size), _Pred);
	return (pair<_InIt1, _InElem2*>(_Result.first, _Result.second.base()));
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		_Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
			_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (pair<_InIt1, _InIt2>(_First1, _Result.second));
	}












#line 2959 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1, class _InIt2, class _InItCats>
inline
	bool __cdecl _Equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2,
		_InItCats, _Range_checked_iterator_tag)
	{	
	for (; _First1 != _Last1; ++_First1, ++_First2)
		if (!(*_First1 == *_First2))
			return (false);
	return (true);
	}

inline bool __cdecl _Equal(const char *_First1,
	const char *_Last1, const char *_First2,
	random_access_iterator_tag, _Range_checked_iterator_tag)
	{	
 
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2977);
	if (_First1 != _Last1)
		_Debug_pointer(_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2979);
 #line 2981 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	return (::memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}

inline bool __cdecl _Equal(const signed char *_First1,
	const signed char *_Last1, const signed char *_First2,
	random_access_iterator_tag, _Range_checked_iterator_tag)
	{	
 
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 2990);
	if (_First1 != _Last1)
		_Debug_pointer(_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",2992);
 #line 2994 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	return (::memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}

inline bool __cdecl _Equal(const unsigned char *_First1,
	const unsigned char *_Last1, const unsigned char *_First2,
	random_access_iterator_tag, _Range_checked_iterator_tag)
	{	
 
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3003);
	if (_First1 != _Last1)
		_Debug_pointer(_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",3005);
 #line 3007 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	return (::memcmp(_First1, _First2, _Last1 - _First1) == 0);
	}


template<class _InIt1, class _InIt2>
inline
	bool __cdecl _Equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2,
		random_access_iterator_tag, _Range_checked_iterator_tag)
	{
	
	_InIt2 _Last2 = _First2 + (_Last1 - _First1); (_Last2);
	return _Equal(_First1, _Last1, ::std:: _Checked_base(_First2),
		forward_iterator_tag(), _Range_checked_iterator_tag());
	}
#line 3023 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _InIt1, class _InIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	return _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
		_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InElem2, size_t _Size>
inline
bool __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size])
	{	
	return equal(_First1, _Last1,
		::stdext:: make_checked_array_iterator(_First2, _Size));
	}

template<class _InIt1, class _InIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	return _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
		_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}











#line 3062 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1, class _InIt2, class _Pr, class _InItCats>
inline
	bool __cdecl _Equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred,
		_InItCats, _Range_checked_iterator_tag)
	{	
	for (; _First1 != _Last1; ++_First1, ++_First2)
		if (!_Pred(*_First1, *_First2))
			return (false);
	return (true);
	}


template<class _InIt1, class _InIt2, class _Pr>
inline
	bool __cdecl _Equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred,
		random_access_iterator_tag, _Range_checked_iterator_tag)
	{
	
	_InIt2 _Last2 = _First2 + (_Last1 - _First1); (_Last2);
	return _Equal(_First1, _Last1, ::std:: _Checked_base(_First2), _Pred,
		forward_iterator_tag(), _Range_checked_iterator_tag());
	}
#line 3087 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _InIt1, class _InIt2, class _Pr>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	return _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
		_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InElem2, class _Pr, size_t _Size>
inline
bool __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size], _Pr _Pred)
	{	
	return equal(_First1, _Last1,
		::stdext:: make_checked_array_iterator(_First2, _Size), _Pred);
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	return _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
		_Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}











#line 3126 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _FwdIt, class _Ty> inline
	void __cdecl _Fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3131);
	for (; _First != _Last; ++_First)
		*_First = _Val;
	}

inline void __cdecl _Fill([SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_First, 
	[SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_Last, int _Val)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3139);
	::memset(_First, _Val, _Last - _First);
	}

inline void __cdecl _Fill([SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] signed char *_First, 
	[SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] signed char *_Last, int _Val)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3146);
	::memset(_First, _Val, _Last - _First);
	}

inline void __cdecl _Fill(
	[SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_First,
	[SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] unsigned char *_Last, int _Val)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3154);
	::memset(_First, _Val, _Last - _First);
	}

template<class _FwdIt, class _Ty> inline
	void __cdecl fill(_FwdIt _First, _FwdIt _Last, const _Ty& _Val)
	{	
	_Fill(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Val);
	}

		
template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void __cdecl _Fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val,
		_Range_checked_iterator_tag)
	{	
	for (; 0 < _Count; --_Count, ++_First)
		*_First = _Val;
	}

inline void __cdecl _Fill_n([SA_Pre(Null=SA_Maybe,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_Count")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_First, 
		size_t _Count, int _Val, _Range_checked_iterator_tag)
	{	

 
	if (0 < _Count)
		_Debug_pointer(_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",3181);
 #line 3183 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	::memset(_First, _Val, _Count);
	}

inline void __cdecl _Fill_n([SA_Pre(Null=SA_Maybe,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_Count")] [SA_Post(Deref=1,Valid=SA_Yes)] signed char *_First, 
		size_t _Count, int _Val, _Range_checked_iterator_tag)
	{	

 
	if (0 < _Count)
		_Debug_pointer(_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",3193);
 #line 3195 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	::memset(_First, _Val, _Count);
	}

inline void __cdecl _Fill_n([SA_Pre(Null=SA_Maybe,WritableElements="_Count")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="_Count")] [SA_Post(Deref=1,Valid=SA_Yes)] unsigned char *_First, 
		size_t _Count, int _Val, _Range_checked_iterator_tag)
	{	

 
	if (0 < _Count)
		_Debug_pointer(_First, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",3205);
 #line 3207 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

	::memset(_First, _Val, _Count);
	}

template<class _OutIt, class _Diff, class _Ty, class _OutCat>
inline
	void __cdecl _Fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val,
		_OutCat, _Range_checked_iterator_tag)
	{
		_Fill_n(_First, _Count, _Val, _Range_checked_iterator_tag());
	}


template<class _OutIt, class _Diff, class _Ty>
inline
	void __cdecl _Fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val,
		random_access_iterator_tag, _Range_checked_iterator_tag)
	{
		
		_OutIt _Last = _First + _Count; (_Last);
		_Fill_n(::std:: _Checked_base(_First), _Count, _Val,
			_Range_checked_iterator_tag());
	}
#line 3231 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



template<class _OutIt,
	class _Diff,
	class _Ty>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, void >::_Result __cdecl fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val)
	{	
		_Fill_n(_First, _Count, _Val, _Iter_cat(_First), ::std:: _Range_checked_iterator_tag());
	}

template<class _OutElem,
	class _Diff,
	class _Ty, size_t _Size>
inline
void __cdecl fill_n(_OutElem (&_First)[_Size], _Diff _Count, const _Ty& _Val)
	{	
		fill_n(::stdext:: make_checked_array_iterator(_First, _Size), _Count, _Val);
	}

template<class _OutIt,
	class _Diff,
	class _Ty>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, void >::_Result __cdecl fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val)
	{	
		_Fill_n(_First, _Count, _Val, _Iter_cat(_First), ::std:: _Range_checked_iterator_tag());
	}











#line 3273 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1, class _InIt2> inline
	bool __cdecl _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2)
	{	
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3279);
	_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3280);
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (_Debug_lt(*_First1, *_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3282))
			return (true);
		else if (*_First2 < *_First1)
			return (false);
	return (_First1 == _Last1 && _First2 != _Last2);
	}

template<class _InIt1, class _InIt2> inline
	bool __cdecl lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2)
	{	
	return _Lexicographical_compare(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1),
		::std:: _Checked_base(_First2), ::std:: _Checked_base(_Last2));
	}

inline bool __cdecl lexicographical_compare(
	const unsigned char *_First1, const unsigned char *_Last1,
	const unsigned char *_First2, const unsigned char *_Last2)
	{	
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3301);
	_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3302);
	ptrdiff_t _Num1 = _Last1 - _First1;
	ptrdiff_t _Num2 = _Last2 - _First2;
	int _Ans = ::memcmp(_First1, _First2, _Num1 < _Num2 ? _Num1 : _Num2);
	return (_Ans < 0 || _Ans == 0 && _Num1 < _Num2);
	}

 











#line 3322 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _InIt1,
	class _InIt2,
	class _Pr> inline
	bool __cdecl _Lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
	{	
	_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3330);
	_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3331);
	_Debug_pointer(_Pred, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility",3332);
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (_Debug_lt_pred(_Pred, *_First1, *_First2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3334))
			return (true);
		else if (_Pred(*_First2, *_First1))
			return (false);
	return (_First1 == _Last1 && _First2 != _Last2);
	}

template<class _InIt1, class _InIt2, class _Pr> inline
	bool __cdecl lexicographical_compare(_InIt1 _First1, _InIt1 _Last1,
		_InIt2 _First2, _InIt2 _Last2, _Pr _Pred)
	{	
	return _Lexicographical_compare(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1),
		::std:: _Checked_base(_First2), ::std:: _Checked_base(_Last2), _Pred);
	}

 
  
  
 #line 3353 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

		
template<class _Ty> inline
	const _Ty& (__cdecl max)(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Debug_lt(_Left, _Right, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3358) ? _Right : _Left);
	}

		
template<class _Ty,
	class _Pr> inline
	const _Ty& (__cdecl max)(const _Ty& _Left, const _Ty& _Right, _Pr _Pred)
	{	
	return (_Debug_lt_pred(_Pred, _Left, _Right, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3366) ? _Right : _Left);
	}

		
template<class _Ty> inline
	const _Ty& (__cdecl min)(const _Ty& _Left, const _Ty& _Right)
	{	
	return (_Debug_lt(_Right, _Left, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3373) ? _Right : _Left);
	}

		
template<class _Ty,
	class _Pr> inline
	const _Ty& (__cdecl min)(const _Ty& _Left, const _Ty& _Right, _Pr _Pred)
	{	
	return (_Debug_lt_pred(_Pred, _Right, _Left, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3381) ? _Right : _Left);
	}

}

namespace stdext {


template <class _Iterator>
	class checked_array_iterator
		: public ::std:: iterator<
			typename ::std:: iterator_traits<_Iterator>::iterator_category, 
			typename ::std:: iterator_traits<_Iterator>::value_type, 
			typename ::std:: iterator_traits<_Iterator>::difference_type, 
			typename ::std:: iterator_traits<_Iterator>::pointer, 
			typename ::std:: iterator_traits<_Iterator>::reference>
	{
public:
	typedef checked_array_iterator<_Iterator> _Myt;
	typedef typename ::std:: iterator_traits<_Iterator>::difference_type difference_type;
	typedef typename ::std:: iterator_traits<_Iterator>::pointer pointer;
	typedef typename ::std:: iterator_traits<_Iterator>::reference reference;

	typedef ::std:: _Range_checked_iterator_tag _Checked_iterator_category;
	typedef _Iterator _Inner_type;

	typedef _Iterator _Checked_iterator_base_type;
 
	_Checked_iterator_base_type _Checked_iterator_base() const
	{
		return _Mycont + _Current;
	}

	void _Checked_iterator_assign_from_base(_Checked_iterator_base_type _Base)
	{
		_Current = _Base - _Mycont;
	}

	

	checked_array_iterator():
		_Size(0), _Current(0)
	{
	}

	checked_array_iterator(_Iterator _Cont, size_t _S, size_t _Index = 0)
	{
		{ if (!(_Index <= _S)) { (void) ((!!((("_Index <= _S", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3428, 0, L"(\"_Index <= _S\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3428, 0); } ; };
		_Mycont = _Cont;
		_Size = _S;
		_Current =_Index;
	}

	_Iterator base() const
	{
		return _Mycont + _Current;
	}

	size_t __Size() const
	{
		return _Size;
	}

	bool operator==(const _Myt& _Right) const
	{
		{ if (!(_Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3446, 0, L"(\"_Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3446, 0); } ; };
		return _Current == _Right._Current;
	}

	bool operator!=(const _Myt& _Right) const
	{
		return !(*this == _Right);
	}

	bool operator<(const _Myt& _Right) const
	{
		{ if (!(_Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3457, 0, L"(\"_Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3457, 0); } ; };
		return _Current < _Right._Current;
	}

	bool operator>(const _Myt& _Right) const
	{
		return _Right < *this;
	}

	bool operator<=(const _Myt& _Right) const
	{
		return !(_Right < *this);
	}

	bool operator>=(const _Myt& _Right) const
	{
		return !(*this < _Right);
	}

	reference operator*() const
	{
		{ if (!(_Current < _Size)) { (void) ((!!((("_Current < _Size", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3478, 0, L"(\"_Current < _Size\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3478, 0); } ; };
		return *(_Mycont + _Current);
	}

	pointer operator->() const
	{
		return (&**this);
	}

	checked_array_iterator& operator++()
	{
		{ if (!(_Current < _Size)) { (void) ((!!((("_Current < _Size", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3489, 0, L"(\"_Current < _Size\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3489, 0); } ; };
		++_Current;
		return *this;
	}

	_Myt operator++(int)
	{
		checked_array_iterator _Tmp = *this;
		++*this;
		return _Tmp;
	}

	_Myt& operator--()
	{
		{ if (!(_Current > 0)) { (void) ((!!((("_Current > 0", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3503, 0, L"(\"_Current > 0\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3503, 0); } ; };
		--_Current;
		return *this;
	}

	_Myt operator--(int)
	{
		checked_array_iterator _Tmp = *this;
		--*this;
		return _Tmp;
	}

	

	_Myt& operator+=(difference_type _Off)
	{
		{ if (!(_Current + _Off <= _Size && _Current + _Off >= 0)) { (void) ((!!((("_Current + _Off <= _Size && _Current + _Off >= 0", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3519, 0, L"(\"_Current + _Off <= _Size && _Current + _Off >= 0\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3519, 0); } ; };
		_Current += _Off;
		return *this;
	}

	_Myt operator+(difference_type _Off) const
	{
		checked_array_iterator _Tmp = *this;
		return (_Tmp += _Off);
	}

	_Myt& operator-=(difference_type _Off)
	{
		return (*this += -_Off);
	}

	_Myt operator-(difference_type _Off) const
	{
		checked_array_iterator _Tmp = *this;
		return (_Tmp -= _Off);
	}

	difference_type operator-(const checked_array_iterator& _Right) const
	{
		{ if (!(_Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3543, 0, L"(\"_Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3543, 0); } ; };
		return _Current - _Right._Current;
	}

	reference operator[](difference_type _Off) const
	{
		{ if (!(_Current + _Off < _Size && _Current + _Off >= 0)) { (void) ((!!((("_Current + _Off < _Size && _Current + _Off >= 0", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3549, 0, L"(\"_Current + _Off < _Size && _Current + _Off >= 0\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility", 3549, 0); } ; };
		return *(_Mycont + _Current + _Off);
	}

protected:
	void _Xran() const
	{	
		throw ::std:: out_of_range("invalid checked_array_iterator<T> subscript");
	}

	void _Xinvarg() const
	{	
		throw ::std:: invalid_argument("invalid checked_array_iterator<T> argument");
	}

	_Iterator _Mycont; 
	size_t _Current; 
	size_t _Size; 
	};

template <class _Iter>
checked_array_iterator<_Iter> make_checked_array_iterator(_Iter _Ptr, size_t _Size)
{
	return checked_array_iterator<_Iter>(_Ptr, _Size);
}

template<class _InIt,
	class _OutIt> inline
	_OutIt __cdecl unchecked_copy(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
		return (::std:: _Copy_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
			::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _OutIt>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl checked_copy(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return (::std:: _Copy_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, 
		::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _OutElem, size_t _Size>
inline
_OutElem* __cdecl checked_copy(_InIt _First, _InIt _Last, _OutElem (&_Dest)[_Size])
	{	
	return checked_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), ::stdext:: make_checked_array_iterator(_Dest, _Size)).base();
	}

template<class _InIt, class _OutIt>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl checked_copy(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return (::std:: _Copy_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, 
		::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 __cdecl unchecked_copy_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
		return (::std:: _Copy_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
			::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _BidIt1,
	class _BidIt2> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl checked_copy_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return ::std:: _Copy_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _BidIt1,
	class _BidIt2> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl checked_copy_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return ::std:: _Copy_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt,
	class _OutIt> inline
	_OutIt __cdecl _Unchecked_move(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
		return (::std:: _Move_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
			::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _OutIt>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl _Checked_move(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return ::std:: _Move_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt, class _OutElem, size_t _Size>
inline
_OutElem* __cdecl _Checked_move(_InIt _First, _InIt _Last, _OutElem (&_Dest)[_Size])
	{	
	return _Checked_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last),
		::stdext:: make_checked_array_iterator(_Dest, _Size)).base();
	}

template<class _InIt, class _OutIt>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, _OutIt >::_Result __cdecl _Checked_move(_InIt _First, _InIt _Last, _OutIt _Dest)
	{	
	return ::std:: _Move_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _BidIt1,
	class _BidIt2> inline
	_BidIt2 __cdecl _Unchecked_move_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
		return (::std:: _Move_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
			::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _BidIt1, class _BidIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl _Checked_move_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return ::std:: _Move_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _BidIt1, class _BidIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _BidIt2 >::_Result, _BidIt2 >::_Result __cdecl _Checked_move_backward(_BidIt1 _First, _BidIt1 _Last, _BidIt2 _Dest)
	{	
	return ::std:: _Move_backward_opt(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Iter_random(_First, _Dest), ::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag());
	}

template<class _OutIt,
	class _Diff,
	class _Ty> inline
	void __cdecl unchecked_fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val)
	{	
		::std:: _Fill_n(_First, _Count, _Val, ::std:: _Iter_cat(_First), ::std:: _Range_checked_iterator_tag());
	}

template<class _OutIt,
	class _Diff,
	class _Ty>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _OutIt >::_Result, void >::_Result __cdecl checked_fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val)
	{	
		_Fill_n(_First, _Count, _Val, ::std:: _Iter_cat(_First), ::std:: _Range_checked_iterator_tag());
	}

template<class _OutElem,
	class _Diff,
	class _Ty, size_t _Size>
inline
void __cdecl checked_fill_n(_OutElem (&_First)[_Size], _Diff _Count, const _Ty& _Val)
	{	
		checked_fill_n(::stdext:: make_checked_array_iterator( _First, _Size), _Count, _Val);
	}

template<class _OutIt,
	class _Diff,
	class _Ty>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _OutIt >::_Result, void >::_Result __cdecl checked_fill_n(_OutIt _First, _Diff _Count, const _Ty& _Val)
	{	
		_Fill_n(_First, _Count, _Val, ::std:: _Iter_cat(_First), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InIt2>
inline
	::std:: pair<_InIt1, _InIt2>
		__cdecl unchecked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	

	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));



#line 3741 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
	}

template<class _InIt1, class _InIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InElem2, size_t _Size>
inline
::std:: pair<_InIt1, _InElem2*>
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size])
	{	
	::std:: pair<_InIt1, ::stdext:: checked_array_iterator<_InElem2*> > _Result =
		checked_mismatch(_First1, _Last1, ::stdext:: make_checked_array_iterator(_First2, _Size));
	return (::std:: pair<_InIt1, _InElem2*>(_Result.first, _Result.second.base()));
	}

template<class _InIt1, class _InIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
	::std:: pair<_InIt1, _InIt2>
		__cdecl unchecked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	

	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));



#line 3793 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InElem2, class _Pr, size_t _Size>
inline
::std:: pair<_InIt1, _InElem2*>
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size], _Pr _Pred)
	{	
	::std:: pair<_InIt1, ::stdext:: checked_array_iterator<_InElem2*> > _Result =
		checked_mismatch(_First1, _Last1, ::stdext:: make_checked_array_iterator(_First2, _Size), _Pred);
	return (::std:: pair<_InIt1, _InElem2*>(_Result.first, _Result.second.base()));
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, ::std:: pair< _InIt1, _InIt2 > >::_Result
		__cdecl checked_mismatch(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	::std:: pair<typename ::std:: _Checked_iterator_base_helper<_InIt1>::_Checked_iterator_base_type, _InIt2> _Result =
		::std:: _Mismatch(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
			::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	::std:: _Checked_assign_from_base(_First1, _Result.first);
	return (::std:: pair<_InIt1, _InIt2>(_First1, _Result.second));
	}

template<class _InIt1, class _InIt2>
inline
	bool __cdecl unchecked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InIt2>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InElem2, size_t _Size>
inline
bool __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size])
	{	
	return checked_equal(_First1, _Last1,
		::stdext:: make_checked_array_iterator(_First2, _Size));
	}

template<class _InIt1, class _InIt2>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
	bool __cdecl unchecked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

template<class _InIt1, class _InElem2, class _Pr, size_t _Size>
inline
bool __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InElem2 (&_First2)[_Size], _Pr _Pred)
	{	
	return checked_equal(_First1, _Last1,
		::stdext:: make_checked_array_iterator(_First2, _Size), _Pred);
	}

template<class _InIt1, class _InIt2, class _Pr>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _InIt2 >::_Result, bool >::_Result __cdecl checked_equal(_InIt1 _First1, _InIt1 _Last1, _InIt2 _First2, _Pr _Pred)
	{	
	return ::std:: _Equal(::std:: _Checked_base(_First1), ::std:: _Checked_base(_Last1), _First2, _Pred,
		::std:: _Iter_random(_First1, _First2), ::std:: _Range_checked_iterator_tag());
	}

}



 
 

 
 

 





#line 3913 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

 








 




 














#line 3944 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
extern "C"
#line 3946 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
__declspec(dllimport) void __cdecl _invalid_parameter([SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const wchar_t *, unsigned int, uintptr_t);






#line 3954 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"



 #pragma warning(pop)
 #pragma pack(pop)
#line 3960 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"

#line 3962 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"
#line 3963 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xutility"























#line 10 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"


 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable: 4100)
#line 16 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"


 
 
 
#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"

 

 

 

 


namespace std {
		
template<class _Ty> inline
	_Ty  *_Allocate(size_t _Count, _Ty  *)
	{	
	if (_Count <= 0)
		_Count = 0;
	else if (((size_t)(-1) / _Count) < sizeof (_Ty))
		throw std::bad_alloc(0);

		
	return ((_Ty  *)::operator new(_Count * sizeof (_Ty)));
	}

		
template<class _T1,
	class _T2> inline
	void _Construct(_T1  *_Ptr, const _T2& _Val)
	{	
	void  *_Vptr = _Ptr;
	::new (_Vptr) _T1(_Val);
	}

		
template<class _Ty> inline
	void _Destroy(_Ty  *_Ptr)
	{	
	(_Ptr)->~_Ty();
	}

template<> inline
	void _Destroy(char  *)
	{	
	}

template<> inline
	void _Destroy(wchar_t  *)
	{	
	}


		
template<class _Ty>
	struct _Allocator_base
	{	
	typedef _Ty value_type;
	};

		
template<class _Ty>
	struct _Allocator_base<const _Ty>
	{	
	typedef _Ty value_type;
	};

		
template<class _Ty>
	class allocator
		: public _Allocator_base<_Ty>
	{	
public:
	typedef _Allocator_base<_Ty> _Mybase;
	typedef typename _Mybase::value_type value_type;
	typedef value_type  *pointer;
	typedef value_type & reference;
	typedef const value_type  *const_pointer;
	typedef const value_type & const_reference;

	typedef size_t size_type;
	typedef ptrdiff_t difference_type;

	template<class _Other>
		struct rebind
		{	
		typedef allocator<_Other> other;
		};

	pointer address(reference _Val) const
		{	
		return (&_Val);
		}

	const_pointer address(const_reference _Val) const
		{	
		return (&_Val);
		}

	allocator() throw ()
		{	
		}

	allocator(const allocator<_Ty>&) throw ()
		{	
		}

	template<class _Other>
		allocator(const allocator<_Other>&) throw ()
		{	
		}

	template<class _Other>
		allocator<_Ty>& operator=(const allocator<_Other>&)
		{	
		return (*this);
		}

	void deallocate(pointer _Ptr, size_type)
		{	
		::operator delete(_Ptr);
		}

	pointer allocate(size_type _Count)
		{	
		return (_Allocate(_Count, (pointer)0));
		}

	pointer allocate(size_type _Count, const void  *)
		{	
		return (allocate(_Count));
		}

	void construct(pointer _Ptr, const _Ty& _Val)
		{	
		_Construct(_Ptr, _Val);
		}

	void destroy(pointer _Ptr)
		{	
		_Destroy(_Ptr);
		}

	size_t max_size() const throw ()
		{	
		size_t _Count = (size_t)(-1) / sizeof (_Ty);
		return (0 < _Count ? _Count : 1);
		}
	};

		
template<class _Ty,
	class _Other> inline
	bool operator==(const allocator<_Ty>&, const allocator<_Other>&) throw ()
	{	
	return (true);
	}

template<class _Ty,
	class _Other> inline
	bool operator!=(const allocator<_Ty>&, const allocator<_Other>&) throw ()
	{	
	return (false);
	}

		
template<> class __declspec(dllimport) allocator<void>
	{	
public:
	typedef void _Ty;
	typedef _Ty  *pointer;
	typedef const _Ty  *const_pointer;
	typedef _Ty value_type;

	template<class _Other>
		struct rebind
		{	
		typedef allocator<_Other> other;
		};

	allocator() throw ()
		{	
		}

	allocator(const allocator<_Ty>&) throw ()
		{	
		}

	template<class _Other>
		allocator(const allocator<_Other>&) throw ()
		{	
		}

	template<class _Other>
		allocator<_Ty>& operator=(const allocator<_Other>&)
		{	
		return (*this);
		}
	};

		
template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al)
	{	
	_Destroy_range(_First, _Last, _Al, _Ptr_cat(_First, _Last));
	}

template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al,
		_Nonscalar_ptr_iterator_tag)
	{	
	for (; _First != _Last; ++_First)
		_Al.destroy(_First);
	}

template<class _Alloc> inline
	void _Destroy_range(typename _Alloc::pointer _First,
		typename _Alloc::pointer _Last, _Alloc& _Al,
		_Scalar_ptr_iterator_tag)
	{	
	}
}


 #pragma warning(default: 4100)
 #pragma warning(pop)
 #pragma pack(pop)
#line 250 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"

#line 252 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"
#line 253 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xmemory"






















#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"


 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable:4412)
#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 
 

namespace std {

  #pragma warning(disable:4251)

template<class _Elem,
	class _Traits = char_traits<_Elem>,
	class _Ax = allocator<_Elem> >
	class basic_string;

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	class _String_const_iterator
		: public _Ranit_base<_Elem, typename _Alloc::difference_type,
			typename _Alloc::const_pointer, typename _Alloc::const_reference, _Iterator_base_secure>
	{	
public:
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> _Myt;
	typedef basic_string<_Elem, _Traits, _Alloc> _Mystring;

	typedef random_access_iterator_tag iterator_category;
	typedef _Elem value_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::const_pointer pointer;
	typedef typename _Alloc::const_reference reference;
	typedef _Elem* _Inner_type;


	typedef _Range_checked_iterator_tag _Checked_iterator_category;
#line 48 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"













#line 62 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	 _String_const_iterator()
		{	
		_Myptr = 0;
		}

 
 

	 _String_const_iterator(pointer _Ptr, const _Container_base_secure *_Pstring)
		{	
		{ if (!(_Pstring == 0 || _Ptr != 0 && ((_Mystring *)_Pstring)->_Myptr() <= _Ptr && _Ptr <= (((_Mystring *)_Pstring)->_Myptr() + ((_Mystring *)_Pstring)->_Mysize))) { (void) ((!!((("_Pstring == NULL || _Ptr != NULL && ((_Mystring *)_Pstring)->_Myptr() <= _Ptr && _Ptr <= (((_Mystring *)_Pstring)->_Myptr() + ((_Mystring *)_Pstring)->_Mysize)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 76, 0, L"(\"_Pstring == NULL || _Ptr != NULL && ((_Mystring *)_Pstring)->_Myptr() <= _Ptr && _Ptr <= (((_Mystring *)_Pstring)->_Myptr() + ((_Mystring *)_Pstring)->_Mysize)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 76, 0); } ; };
#line 77 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		this->_Adopt(_Pstring);
		_Myptr = _Ptr;
		}

 



















#line 102 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	reference  operator*() const
		{	

 
		if (this->_Mycont == 0 || _Myptr == 0
			|| _Myptr < ((_Mystring *)this->_Mycont)->_Myptr()
			|| ((_Mystring *)this->_Mycont)->_Myptr()
				+ ((_Mystring *)this->_Mycont)->_Mysize <= _Myptr)
			{
			_Debug_message(L"string iterator not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 112);
			{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 113, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 113, 0); };
			}
		;
 





#line 123 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (*_Myptr);
		}

	pointer  operator->() const
		{	
		return (&**this);
		}

	_Myt&  operator++()
		{	
		if (this->_Mycont != ((const _Container_base_secure *)-4))
		{
			{ if (!(this->_Has_container())) { (void) ((!!((("this->_Has_container()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 136, 0, L"(\"this->_Has_container()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 136, 0); } ; };
			{ if (!(_Myptr < (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize))) { (void) ((!!((("_Myptr < (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 137, 0, L"(\"_Myptr < (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 137, 0); } ; };
		}
		++_Myptr;
		return (*this);
		}

	_Myt  operator++(int)
		{	
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myt&  operator--()
		{	
		if (this->_Mycont != ((const _Container_base_secure *)-4))
		{
			{ if (!(this->_Has_container())) { (void) ((!!((("this->_Has_container()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 154, 0, L"(\"this->_Has_container()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 154, 0); } ; };
			{ if (!(_Myptr > ((_Mystring *)this->_Mycont)->_Myptr())) { (void) ((!!((("_Myptr > ((_Mystring *)this->_Mycont)->_Myptr()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 155, 0, L"(\"_Myptr > ((_Mystring *)this->_Mycont)->_Myptr()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 155, 0); } ; };
		}
		--_Myptr;
		return (*this);
		}

	_Myt  operator--(int)
		{	
		_Myt _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myt&  operator+=(difference_type _Off)
		{	
		if (this->_Mycont != ((const _Container_base_secure *)-4))
		{
			{ if (!(this->_Has_container())) { (void) ((!!((("this->_Has_container()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 172, 0, L"(\"this->_Has_container()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 172, 0); } ; };
			{ if (!(_Myptr + _Off <= (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize) && _Myptr + _Off >= ((_Mystring *)this->_Mycont)->_Myptr())) { (void) ((!!((("_Myptr + _Off <= (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize) && _Myptr + _Off >= ((_Mystring *)this->_Mycont)->_Myptr()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 175, 0, L"(\"_Myptr + _Off <= (((_Mystring *)this->_Mycont)->_Myptr() + ((_Mystring *)this->_Mycont)->_Mysize) && _Myptr + _Off >= ((_Mystring *)this->_Mycont)->_Myptr()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 175, 0); } ; };
#line 176 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		}
		_Myptr += _Off;
		return (*this);
		}

	_Myt  operator+(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt&  operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myt  operator-(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type  operator-(const _Myt& _Right) const
		{	

 
		_Compat(_Right);
 




#line 209 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (_Myptr - _Right._Myptr);
		}

	reference  operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}

	bool  operator==(const _Myt& _Right) const
		{	

 
		_Compat(_Right);
 




#line 229 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (_Myptr == _Right._Myptr);
		}

	bool  operator!=(const _Myt& _Right) const
		{	
		return (!(*this == _Right));
		}

	bool  operator<(const _Myt& _Right) const
		{	

 
		_Compat(_Right);
 




#line 249 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (_Myptr < _Right._Myptr);
		}

	bool  operator>(const _Myt& _Right) const
		{	
		return (_Right < *this);
		}

	bool  operator<=(const _Myt& _Right) const
		{	
		return (!(_Right < *this));
		}

	bool  operator>=(const _Myt& _Right) const
		{	
		return (!(*this < _Right));
		}

 
	void  _Compat(const _Myt& _Right) const
		{	
		if (this->_Mycont == 0 || this->_Mycont != _Right._Mycont)
			{
			_Debug_message(L"string iterators incompatible", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 273);
			{ (void) ((!!((("Standard C++ Libraries Invalid Argument", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 274, 0, L"(\"Standard C++ Libraries Invalid Argument\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 274, 0); };
			}
		}
 #line 278 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	static void __cdecl _Xlen()
		{
		_Mystring::_Xlen();
		}

	static void __cdecl _Xran()
		{
		_Mystring::_Xran();
		}

	static void __cdecl _Xinvarg()
		{
		_Mystring::_Xinvarg();
		}

	pointer _Myptr;	
	};

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_const_iterator<_Elem, _Traits, _Alloc> __cdecl operator+(
		typename _String_const_iterator<_Elem, _Traits, _Alloc>
			::difference_type _Off,
		_String_const_iterator<_Elem, _Traits, _Alloc> _Next)
	{	
	return (_Next += _Off);
	}

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	class _String_iterator
		: public _String_const_iterator<_Elem, _Traits, _Alloc>
	{	
public:
	typedef _String_iterator<_Elem, _Traits, _Alloc> _Myt;
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> _Mybase;

	typedef random_access_iterator_tag iterator_category;
	typedef _Elem value_type;
	typedef typename _Alloc::difference_type difference_type;
	typedef typename _Alloc::pointer pointer;
	typedef typename _Alloc::reference reference;

	 _String_iterator()
		{	
		}

 
 

	 _String_iterator(pointer _Ptr, const _Container_base_secure *_Pstring)
		: _Mybase(_Ptr, _Pstring)
		{	
		}

  













#line 352 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"













#line 366 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	reference  operator*() const
		{	
		return ((reference)**(_Mybase *)this);
		}

	pointer  operator->() const
		{	
		return (&**this);
		}

	_Myt&  operator++()
		{	
		++(*(_Mybase *)this);
		return (*this);
		}

	_Myt  operator++(int)
		{	
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	_Myt&  operator--()
		{	
		--(*(_Mybase *)this);
		return (*this);
		}

	_Myt  operator--(int)
		{	
		_Myt _Tmp = *this;
		--*this;
		return (_Tmp);
		}

	_Myt&  operator+=(difference_type _Off)
		{	
		(*(_Mybase *)this) += _Off;
		return (*this);
		}

	_Myt  operator+(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
		}

	_Myt&  operator-=(difference_type _Off)
		{	
		return (*this += -_Off);
		}

	_Myt  operator-(difference_type _Off) const
		{	
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
		}

	difference_type  operator-(const _Mybase& _Right) const
		{	
		return ((_Mybase)*this - _Right);
		}

	reference  operator[](difference_type _Off) const
		{	
		return (*(*this + _Off));
		}
	};

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	_String_iterator<_Elem, _Traits, _Alloc>  operator+(
		typename _String_iterator<_Elem, _Traits, _Alloc>
			::difference_type _Off,
		_String_iterator<_Elem, _Traits, _Alloc> _Next)
	{	
	return (_Next += _Off);
	}

		
class __declspec(dllimport) _String_base
		: public _Container_base_secure
	{	
public:
	 static void __cdecl _Xlen();	

	 static void __cdecl _Xran();	

	 static void __cdecl _Xinvarg();
	};

		
template<class _Ty,
	class _Alloc>
	class _String_val
		: public _String_base
	{	
protected:
	typedef typename _Alloc::template
		rebind<_Ty>::other _Alty;

	 _String_val(_Alty _Al = _Alty())
		: _Alval(_Al)
		{	
		}

public:
	 _String_val(const _String_val &_Right)
		: _Alval(_Right._Alval)
		{	

		if (_Right._Myfirstiter == ((_Iterator_base *)-3))
			{
			this->_Myfirstiter = ((_Iterator_base *)-3);
			}
#line 485 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		}

protected:
	_Alty _Alval;	
	};

		
template<class _Elem,
	class _Traits,
	class _Ax>
	class basic_string
		: public _String_val<_Elem, _Ax>
	{	
public:
	typedef basic_string<_Elem, _Traits, _Ax> _Myt;
	typedef _String_val<_Elem, _Ax> _Mybase;
	typedef typename _Mybase::_Alty _Alloc;
	typedef typename _Alloc::size_type size_type;
	typedef typename _Alloc::difference_type _Dift;
	typedef _Dift difference_type;
	typedef typename _Alloc::pointer _Tptr;
	typedef typename _Alloc::const_pointer _Ctptr;
	typedef _Tptr pointer;
	typedef _Ctptr const_pointer;
	typedef typename _Alloc::reference _Reft;
	typedef _Reft reference;
	typedef typename _Alloc::const_reference const_reference;
	typedef typename _Alloc::value_type value_type;



	typedef _String_iterator<_Elem, _Traits, _Alloc> iterator;
	typedef _String_const_iterator<_Elem, _Traits, _Alloc> const_iterator;


	friend class _String_const_iterator<_Elem, _Traits, _Alloc>;

	typedef std::reverse_iterator<iterator> reverse_iterator;
	typedef std::reverse_iterator<const_iterator> const_reverse_iterator;

    

    




    





#line 539 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

    




    



#line 550 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

  
	struct _Has_debug_it
	{
		bool _Value;
		explicit _Has_debug_it(bool _Val): _Value(_Val) { }
	};
  #line 558 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 #line 560 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 







#line 570 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

  

	 basic_string(_Has_debug_it _Hdi = _Has_debug_it(true))
		: _Mybase()
		{	
		if (!_Hdi._Value)
			{
			this->_Myfirstiter = ((_Iterator_base *)-3);
			}
		_Tidy();
		}

  











#line 596 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 #line 598 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 

	explicit  basic_string(const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		}

	 basic_string(const _Myt& _Right, size_type _Roff,
		size_type _Count = npos)
		: _Mybase()
		{	

		if (_Right._Myfirstiter == ((_Iterator_base *)-3))
			{
			this->_Myfirstiter = ((_Iterator_base *)-3);
			}
#line 617 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		_Tidy();
		assign(_Right, _Roff, _Count);
		}

	 basic_string(const _Myt& _Right, size_type _Roff, size_type _Count,
		const _Alloc& _Al)
		: _Mybase(_Al)
		{	

		if (_Right._Myfirstiter == ((_Iterator_base *)-3))
			{
			this->_Myfirstiter = ((_Iterator_base *)-3);
			}
#line 631 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		_Tidy();
		assign(_Right, _Roff, _Count);
		}

	 basic_string(const _Elem *_Ptr, size_type _Count)
		: _Mybase()
		{	
		_Tidy();
		assign(_Ptr, _Count);
		}

	 basic_string(const _Elem *_Ptr, size_type _Count, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Ptr, _Count);
		}

	 basic_string(const _Elem *_Ptr)
		: _Mybase()
		{	
		_Tidy();
		assign(_Ptr);
		}

	 basic_string(const _Elem *_Ptr, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Ptr);
		}

	 basic_string(size_type _Count, _Elem _Ch)
		: _Mybase()
		{	
		_Tidy();
		assign(_Count, _Ch);
		}

	 basic_string(size_type _Count, _Elem _Ch, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		assign(_Count, _Ch);
		}

	template<class _It>
		 basic_string(_It _First, _It _Last)
		: _Mybase()
		{	
		_Tidy();
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	template<class _It>
		 basic_string(_It _First, _It _Last, const _Alloc& _Al)
		: _Mybase(_Al)
		{	
		_Tidy();
		_Construct(_First, _Last, _Iter_cat(_First));
		}

	 basic_string(const_pointer _First, const_pointer _Last)
		: _Mybase()
		{	

		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 697);
#line 699 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		_Tidy();
		if (_First != _Last)
			assign(&*_First, _Last - _First);
		}

	 basic_string(const_iterator _First, const_iterator _Last)
		: _Mybase()
		{	

		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 708);
#line 710 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		_Tidy();
		if (_First != _Last)
			assign(&*_First, _Last - _First);
		}

 #line 716 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	
	
	 basic_string(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		_Tidy();
		assign(_Right, 0, npos);
		}

 

  































































































































#line 857 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 #line 859 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	template<class _It>
		void  _Construct(_It _Count,
			_It _Ch, _Int_iterator_tag)
		{	
		assign((size_type)_Count, (_Elem)_Ch);
		}

	template<class _It>
		void  _Construct(_It _First,
			_It _Last, input_iterator_tag)
		{	
		try {
		for (; _First != _Last; ++_First)
			append((size_type)1, (_Elem)*_First);
		} catch (...) {
		_Tidy(true);
		throw;
		}
		}

	template<class _It>
		void  _Construct(_It _First,
			_It _Last, forward_iterator_tag)
		{	

		
		if (this->_Myfirstiter != ((_Iterator_base *)-3))
			{
			_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 888);
			}
#line 891 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
		size_type _Count = 0;
		_Distance(_First, _Last, _Count);
		reserve(_Count);

		try {
		for (; _First != _Last; ++_First)
			append((size_type)1, (_Elem)*_First);
		} catch (...) {
		_Tidy(true);
		throw;
		}
		}

	 ~basic_string()
		{	
		_Tidy(true);
		}

	typedef _Traits traits_type;
	typedef _Alloc allocator_type;

	 static const size_type npos;	

	_Myt&  operator=(const _Myt& _Right)
		{	
		return (assign(_Right));
		}

	_Myt&  operator=(const _Elem *_Ptr)
		{	
		return (assign(_Ptr));
		}

	_Myt&  operator=(_Elem _Ch)
		{	
		return (assign(1, _Ch));
		}

	_Myt&  operator+=(const _Myt& _Right)
		{	
		return (append(_Right));
		}

	_Myt&  operator+=(const _Elem *_Ptr)
		{	
		return (append(_Ptr));
		}

	_Myt&  operator+=(_Elem _Ch)
		{	
		return (append((size_type)1, _Ch));
		}

	_Myt&  append(const _Myt& _Right)
		{	
		return (append(_Right, 0, npos));
		}

	_Myt&  append(const _Myt& _Right,
		size_type _Roff, size_type _Count)
		{	
		if (_Right.size() < _Roff)
			_String_base::_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - _Mysize <= _Count || _Mysize + _Count < _Mysize)
			_String_base::_Xlen();	

		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Traits_helper::copy_s<_Traits>(_Myptr() + _Mysize, _Myres - _Mysize,
				_Right._Myptr() + _Roff, _Count);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  append(const _Elem *_Ptr, size_type _Count)
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",974);
 #line 976 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Inside(_Ptr))
			return (append(*this, _Ptr - _Myptr(), _Count));	
		if (npos - _Mysize <= _Count || _Mysize + _Count < _Mysize)
			_String_base::_Xlen();	

		size_type _Num;
		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Traits_helper::copy_s<_Traits>(_Myptr() + _Mysize, _Myres - _Mysize, _Ptr, _Count);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  append(const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",993);
		return (append(_Ptr, _Traits::length(_Ptr)));
		}

	_Myt&  append(size_type _Count, _Elem _Ch)
		{	
			if (npos - _Mysize <= _Count)
			_String_base::_Xlen();	

		size_type _Num;
		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Chassign(_Mysize, _Count, _Ch);
			_Eos(_Num);
			}
		return (*this);
		}

	template<class _It>
		_Myt&  append(_It _First, _It _Last)
		{	
		return (_Append(_First, _Last, _Iter_cat(_First)));
		}

	template<class _It>
		_Myt&  _Append(_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (append((size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt&  _Append(_It _First, _It _Last, input_iterator_tag)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt&  append(const_pointer _First, const_pointer _Last)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt&  append(const_iterator _First, const_iterator _Last)
		{	
		return (replace(end(), end(), _First, _Last));
		}

	_Myt&  assign(const _Myt& _Right)
		{	
		return (assign(_Right, 0, npos));
		}

	_Myt&  assign(const _Myt& _Right,
		size_type _Roff, size_type _Count)
		{	
		if (_Right.size() < _Roff)
			_String_base::_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Count < _Num)
			_Num = _Count;	

		if (this == &_Right)
			erase((size_type)(_Roff + _Num)), erase(0, _Roff);	
		else if (_Grow(_Num))
			{	
			_Traits_helper::copy_s<_Traits>(_Myptr(), _Myres, _Right._Myptr() + _Roff, _Num);
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  assign(const _Elem *_Ptr, size_type _Count)
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1068);
 #line 1070 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Inside(_Ptr))
			return (assign(*this, _Ptr - _Myptr(), _Count));	

		if (_Grow(_Count))
			{	
			_Traits_helper::copy_s<_Traits>(_Myptr(), _Myres, _Ptr, _Count);
			_Eos(_Count);
			}
		return (*this);
		}

	_Myt&  assign(const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1084);
		return (assign(_Ptr, _Traits::length(_Ptr)));
		}

	_Myt&  assign(size_type _Count, _Elem _Ch)
		{	
		if (_Count == npos)
			_String_base::_Xlen();	

		if (_Grow(_Count))
			{	
			_Chassign(0, _Count, _Ch);
			_Eos(_Count);
			}
		return (*this);
		}

	template<class _It>
		_Myt&  assign(_It _First, _It _Last)
		{	
		return (_Assign(_First, _Last, _Iter_cat(_First)));
		}

	template<class _It>
		_Myt&  _Assign(_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (assign((size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt&  _Assign(_It _First, _It _Last, input_iterator_tag)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt&  assign(const_pointer _First, const_pointer _Last)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt&  assign(const_iterator _First, const_iterator _Last)
		{	
		return (replace(begin(), end(), _First, _Last));
		}

	_Myt&  insert(size_type _Off, const _Myt& _Right)
		{	
		return (insert(_Off, _Right, 0, npos));
		}

	_Myt&  insert(size_type _Off,
		const _Myt& _Right, size_type _Roff, size_type _Count)
		{	
		if (_Mysize < _Off || _Right.size() < _Roff)
			_String_base::_Xran();	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - _Mysize <= _Count)
			_String_base::_Xlen();	

		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off, _Mysize - _Off);	
			if (this == &_Right)
				_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
					_Myptr() + (_Off < _Roff ? _Roff + _Count : _Roff),
						_Count);	
			else
				_Traits_helper::copy_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
					_Right._Myptr() + _Roff, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  insert(size_type _Off,
		const _Elem *_Ptr, size_type _Count)
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1167);
 #line 1169 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Inside(_Ptr))
			return (insert(_Off, *this,
				_Ptr - _Myptr(), _Count));	
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (npos - _Mysize <= _Count)
			_String_base::_Xlen();	
		size_type _Num;
		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off, _Mysize - _Off);	
			_Traits_helper::copy_s<_Traits>(_Myptr() + _Off, _Myres - _Off, _Ptr, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  insert(size_type _Off, const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1190);
		return (insert(_Off, _Ptr, _Traits::length(_Ptr)));
		}

	_Myt&  insert(size_type _Off,
		size_type _Count, _Elem _Ch)
		{	
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (npos - _Mysize <= _Count)
			_String_base::_Xlen();	
		size_type _Num;
		if (0 < _Count && _Grow(_Num = _Mysize + _Count))
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off, _Mysize - _Off);	
			_Chassign(_Off, _Count, _Ch);	
			_Eos(_Num);
			}
		return (*this);
		}

	iterator  insert(const_iterator _Where)
		{	
		return (insert(_Where, _Elem()));
		}

	iterator  insert(const_iterator _Where, _Elem _Ch)
		{	
		size_type _Off = _Pdif(_Where, begin());
		insert(_Off, 1, _Ch);
		return (begin() + _Off);
		}

	void  insert(const_iterator _Where, size_type _Count, _Elem _Ch)
		{	
		size_type _Off = _Pdif(_Where, begin());
		insert(_Off, _Count, _Ch);
		}

	template<class _It>
		void  insert(const_iterator _Where, _It _First, _It _Last)
		{	
		_Insert(_Where, _First, _Last, _Iter_cat(_First));
		}

	template<class _It>
		void  _Insert(const_iterator _Where, _It _Count, _It _Ch,
			_Int_iterator_tag)
		{	
		insert(_Where, (size_type)_Count, (_Elem)_Ch);
		}

	template<class _It>
		void  _Insert(const_iterator _Where, _It _First, _It _Last,
			input_iterator_tag)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	void  insert(const_iterator _Where, const_pointer _First, const_pointer _Last)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	void  insert(const_iterator _Where, const_iterator _First, const_iterator _Last)
		{	
		replace(_Where, _Where, _First, _Last);
		}

	_Myt&  erase(size_type _Off = 0,
		size_type _Count = npos)
		{	
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (_Mysize - _Off < _Count)
			_Count = _Mysize - _Off;	
		if (0 < _Count)
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off, _Myptr() + _Off + _Count,
				_Mysize - _Off - _Count);
			size_type _Newsize = _Mysize - _Count;
			_Eos(_Newsize);
			}
		return (*this);
		}

	iterator  erase(const_iterator _Where)
		{	
		size_type _Count = _Pdif(_Where, begin());
		erase(_Count, 1);
		return (iterator(_Myptr() + _Count, this));
		}

	iterator  erase(const_iterator _First, const_iterator _Last)
		{	
		size_type _Count = _Pdif(_First, begin());
		erase(_Count, _Pdif(_Last, _First));
		return (iterator(_Myptr() + _Count, this));
		}

	void  clear()
		{	
		erase(begin(), end());
		}

	_Myt&  replace(size_type _Off, size_type _N0, const _Myt& _Right)
		{	
		return (replace(_Off, _N0, _Right, 0, npos));
		}

	_Myt&  replace(size_type _Off,
		size_type _N0, const _Myt& _Right, size_type _Roff, size_type _Count)
		{	
		if (_Mysize < _Off || _Right.size() < _Roff)
			_String_base::_Xran();	
		if (_Mysize - _Off < _N0)
			_N0 = _Mysize - _Off;	
		size_type _Num = _Right.size() - _Roff;
		if (_Num < _Count)
			_Count = _Num;	
		if (npos - _Count <= _Mysize - _N0)
			_String_base::_Xlen();	

		size_type _Nm = _Mysize - _N0 - _Off;	
		size_type _Newsize = _Mysize + _Count - _N0;
		if (_Mysize < _Newsize)
			_Grow(_Newsize);

		if (this != &_Right)
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits_helper::copy_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
				_Right._Myptr() + _Roff, _Count);	
			}
		else if (_Count <= _N0)
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
				_Myptr() + _Roff, _Count);	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
			}
		else if (_Roff <= _Off)
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
				_Myptr() + _Roff, _Count);	
			}
		else if (_Off + _N0 <= _Roff)
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
				_Myptr() + (_Roff + _Count - _N0), _Count);	
			}
		else
			{	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off, _Myres - _Off,
				_Myptr() + _Roff, _N0);	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _N0, _Myres - _Off - _N0, _Myptr() + _Roff + _Count,
				_Count - _N0);	
			}

		_Eos(_Newsize);
		return (*this);
		}

	_Myt&  replace(size_type _Off,
		size_type _N0, const _Elem *_Ptr, size_type _Count)
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1367);
 #line 1369 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Inside(_Ptr))
			return (replace(_Off, _N0, *this,
				_Ptr - _Myptr(), _Count));	
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (_Mysize - _Off < _N0)
			_N0 = _Mysize - _Off;	
		if (npos - _Count <= _Mysize - _N0)
			_String_base::_Xlen();	
		size_type _Nm = _Mysize - _N0 - _Off;

		if (_Count < _N0)
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
		size_type _Num;
		if ((0 < _Count || 0 < _N0) && _Grow(_Num = _Mysize + _Count - _N0))
			{	
			if (_N0 < _Count)
				_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
					_Myptr() + _Off + _N0, _Nm);	
			_Traits_helper::copy_s<_Traits>(_Myptr() + _Off, _Myres - _Off, _Ptr, _Count);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  replace(size_type _Off, size_type _N0, const _Elem *_Ptr)
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1398);
		return (replace(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
		}

	_Myt&  replace(size_type _Off,
		size_type _N0, size_type _Count, _Elem _Ch)
		{	
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (_Mysize - _Off < _N0)
			_N0 = _Mysize - _Off;	
		if (npos - _Count <= _Mysize - _N0)
			_String_base::_Xlen();	
		size_type _Nm = _Mysize - _N0 - _Off;

		if (_Count < _N0)
			_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
				_Myptr() + _Off + _N0, _Nm);	
		size_type _Num;
		if ((0 < _Count || 0 < _N0) && _Grow(_Num = _Mysize + _Count - _N0))
			{	
			if (_N0 < _Count)
				_Traits_helper::move_s<_Traits>(_Myptr() + _Off + _Count, _Myres - _Off - _Count,
					_Myptr() + _Off + _N0, _Nm);	
			_Chassign(_Off, _Count, _Ch);	
			_Eos(_Num);
			}
		return (*this);
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last, const _Myt& _Right)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Right));
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last, const _Elem *_Ptr,
		size_type _Count)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Ptr, _Count));
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last, const _Elem *_Ptr)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Ptr));
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last,
		size_type _Count, _Elem _Ch)
		{	
		return (replace(
			_Pdif(_First, begin()), _Pdif(_Last, _First), _Count, _Ch));
		}

	template<class _It>
		_Myt&  replace(const_iterator _First, const_iterator _Last,
			_It _First2, _It _Last2)
		{	
		return (_Replace(_First, _Last,
			_First2, _Last2, _Iter_cat(_First2)));
		}

	template<class _It>
		_Myt&  _Replace(const_iterator _First, const_iterator _Last,
			_It _Count, _It _Ch, _Int_iterator_tag)
		{	
		return (replace(_First, _Last, (size_type)_Count, (_Elem)_Ch));
		}

	template<class _It>
		_Myt&  _Replace(const_iterator _First, const_iterator _Last,
			_It _First2, _It _Last2, input_iterator_tag)
		{	
		_Myt _Right(_First2, _Last2);
		replace(_First, _Last, _Right);
		return (*this);
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last,
		const_pointer _First2, const_pointer _Last2)
		{	
		if (_First2 == _Last2)
			erase(_Pdif(_First, begin()), _Pdif(_Last, _First));
		else
			replace(_Pdif(_First, begin()), _Pdif(_Last, _First),
				&*_First2, _Last2 - _First2);
		return (*this);
		}

	_Myt&  replace(const_iterator _First, const_iterator _Last,
		const_iterator _First2, const_iterator _Last2)
		{	
		if (_First2 == _Last2)
			erase(_Pdif(_First, begin()), _Pdif(_Last, _First));
		else
			replace(_Pdif(_First, begin()), _Pdif(_Last, _First),
				&*_First2, _Last2 - _First2);
		return (*this);
		}

	iterator  begin()
		{	
		return (iterator(_Myptr(), this));
		}

	const_iterator  begin() const
		{	
		return (const_iterator(_Myptr(), this));
		}

	iterator  end()
		{	
		return (iterator(_Myptr() + _Mysize, this));
		}

	const_iterator  end() const
		{	
		return (const_iterator(_Myptr() + _Mysize, this));
		}

	reverse_iterator  rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator  rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator  rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator  rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

	reference  at(size_type _Off)
		{	
		if (_Mysize <= _Off)
			_String_base::_Xran();	
		return (_Myptr()[_Off]);
		}

	const_reference  at(size_type _Off) const
		{	
		if (_Mysize <= _Off)
			_String_base::_Xran();	
		return (_Myptr()[_Off]);
		}

 

	reference  operator[](size_type _Off)
		{	

 
		
		if (this->_Myfirstiter != ((_Iterator_base *)-3))
			{
			if (_Mysize < _Off)
				{
				_Debug_message(L"string subscript out of range", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1565);
				{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1566, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1566, 0); };
				}
			}
 

#line 1572 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (_Myptr()[_Off]);
		}

	const_reference  operator[](size_type _Off) const
		{	

 
		
		if (this->_Myfirstiter != ((_Iterator_base *)-3))
			{
			if (_Mysize < _Off)	
				{
				_Debug_message(L"string subscript out of range", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1585);
				{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1586, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring", 1586, 0); };
				}
			}
 

#line 1592 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		return (_Myptr()[_Off]);
		}

 #line 1597 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 

  







































#line 1641 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

 #line 1643 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

	void  push_back(_Elem _Ch)
		{	
		insert(end(), _Ch);
		}

	const _Elem * c_str() const
		{	
		return (_Myptr());
		}

	const _Elem * data() const
		{	
		return (c_str());
		}

	size_type  length() const
		{	
		return (_Mysize);
		}

	size_type  size() const
		{	
		return (_Mysize);
		}

	size_type  max_size() const
		{	
		size_type _Num = _Mybase::_Alval.max_size();
		return (_Num <= 1 ? 1 : _Num - 1);
		}

	void  resize(size_type _Newsize)
		{	
		resize(_Newsize, _Elem());
		}

	void  resize(size_type _Newsize, _Elem _Ch)
		{	
		if (_Newsize <= _Mysize)
			erase(_Newsize);
		else
			append(_Newsize - _Mysize, _Ch);
		}

	size_type  capacity() const
		{	
		return (_Myres);
		}

	void  reserve(size_type _Newcap = 0)
		{	
		if (_Mysize <= _Newcap && _Myres != _Newcap)
			{	
			size_type _Size = _Mysize;
			if (_Grow(_Newcap, true))
				_Eos(_Size);
			}
		}

	bool  empty() const
		{	
		return (_Mysize == 0);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	size_type  copy(_Elem *_Dest,
		size_type _Count, size_type _Off = 0) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1715);
 #line 1717 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		
		return _Copy_s(_Dest, _Count, _Count, _Off);
		}

	size_type  _Copy_s(_Elem *_Dest, size_type _Dest_size,
		size_type _Count, size_type _Off = 0) const
		{	
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1725);
		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (_Mysize - _Off < _Count)
			_Count = _Mysize - _Off;
		_Traits_helper::copy_s<_Traits>(_Dest, _Dest_size, _Myptr() + _Off, _Count);
		return (_Count);
		}

	void  swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (_Mybase::_Alval == _Right._Alval)
			{	

 
			this->_Swap_all(_Right);
 #line 1744 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

			_Bxty _Tbx = _Bx;
			_Bx = _Right._Bx, _Right._Bx = _Tbx;

			size_type _Tlen = _Mysize;
			_Mysize = _Right._Mysize, _Right._Mysize = _Tlen;

			size_type _Tres = _Myres;
			_Myres = _Right._Myres, _Right._Myres = _Tres;
			}
		else
			{	
			_Myt _Tmp = *this;

			*this = _Right;
			_Right = _Tmp;
			}
		}

	size_type  find(const _Myt& _Right, size_type _Off = 0) const
		{	
		return (find(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type  find(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1774);
 #line 1776 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Count == 0 && _Off <= _Mysize)
			return (_Off);	

		size_type _Nm;
		if (_Off < _Mysize && _Count <= (_Nm = _Mysize - _Off))
			{	
			const _Elem *_Uptr, *_Vptr;
			for (_Nm -= _Count - 1, _Vptr = _Myptr() + _Off;
				(_Uptr = _Traits::find(_Vptr, _Nm, *_Ptr)) != 0;
				_Nm -= _Uptr - _Vptr + 1, _Vptr = _Uptr + 1)
				if (_Traits::compare(_Uptr, _Ptr, _Count) == 0)
					return (_Uptr - _Myptr());	
			}

		return (npos);	
		}

	size_type  find(const _Elem *_Ptr, size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1796);
		return (find(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  find(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find((const _Elem *)&_Ch, _Off, 1));
		}

	size_type  rfind(const _Myt& _Right, size_type _Off = npos) const
		{	
		return (rfind(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type  rfind(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1816);
 #line 1818 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Count == 0)
			return (_Off < _Mysize ? _Off : _Mysize);	
		if (_Count <= _Mysize)
			{	
			const _Elem *_Uptr = _Myptr() +
				(_Off < _Mysize - _Count ? _Off : _Mysize - _Count);
			for (; ; --_Uptr)
				if (_Traits::eq(*_Uptr, *_Ptr)
					&& _Traits::compare(_Uptr, _Ptr, _Count) == 0)
					return (_Uptr - _Myptr());	
				else if (_Uptr == _Myptr())
					break;	
			}

		return (npos);	
		}

	size_type  rfind(const _Elem *_Ptr, size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1838);
		return (rfind(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  rfind(_Elem _Ch, size_type _Off = npos) const
		{	
		return (rfind((const _Elem *)&_Ch, _Off, 1));
		}

	size_type  find_first_of(const _Myt& _Right,
		size_type _Off = 0) const
		{	
		return (find_first_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type  find_first_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1859);
 #line 1861 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (0 < _Count && _Off < _Mysize)
			{	
			const _Elem *const _Vptr = _Myptr() + _Mysize;
			for (const _Elem *_Uptr = _Myptr() + _Off; _Uptr < _Vptr; ++_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
					return (_Uptr - _Myptr());	
			}

		return (npos);	
		}

	size_type  find_first_of(const _Elem *_Ptr, size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1875);
		return (find_first_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  find_first_of(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find((const _Elem *)&_Ch, _Off, 1));
		}

	size_type  find_last_of(const _Myt& _Right,
		size_type _Off = npos) const
		{	
		return (find_last_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type  find_last_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1896);
 #line 1898 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (0 < _Count && 0 < _Mysize)
			for (const _Elem *_Uptr = _Myptr()
				+ (_Off < _Mysize ? _Off : _Mysize - 1); ; --_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) != 0)
					return (_Uptr - _Myptr());	
				else if (_Uptr == _Myptr())
					break;	

		return (npos);	
		}

	size_type  find_last_of(const _Elem *_Ptr,
		size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1913);
		return (find_last_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  find_last_of(_Elem _Ch, size_type _Off = npos) const
		{	
		return (rfind((const _Elem *)&_Ch, _Off, 1));
		}

	size_type  find_first_not_of(const _Myt& _Right,
		size_type _Off = 0) const
		{	
		return (find_first_not_of(_Right._Myptr(), _Off,
			_Right.size()));
		}

	size_type  find_first_not_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1935);
 #line 1937 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Off < _Mysize)
			{	
			const _Elem *const _Vptr = _Myptr() + _Mysize;
			for (const _Elem *_Uptr = _Myptr() + _Off; _Uptr < _Vptr; ++_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
					return (_Uptr - _Myptr());
			}
		return (npos);
		}

	size_type  find_first_not_of(const _Elem *_Ptr,
		size_type _Off = 0) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1951);
		return (find_first_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  find_first_not_of(_Elem _Ch, size_type _Off = 0) const
		{	
		return (find_first_not_of((const _Elem *)&_Ch, _Off, 1));
		}

	size_type  find_last_not_of(const _Myt& _Right,
		size_type _Off = npos) const
		{	
		return (find_last_not_of(_Right._Myptr(), _Off, _Right.size()));
		}

	size_type  find_last_not_of(const _Elem *_Ptr,
		size_type _Off, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1972);
 #line 1974 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (0 < _Mysize)
			for (const _Elem *_Uptr = _Myptr()
				+ (_Off < _Mysize ? _Off : _Mysize - 1); ; --_Uptr)
				if (_Traits::find(_Ptr, _Count, *_Uptr) == 0)
					return (_Uptr - _Myptr());
				else if (_Uptr == _Myptr())
					break;
		return (npos);
		}

	size_type  find_last_not_of(const _Elem *_Ptr,
		size_type _Off = npos) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",1988);
		return (find_last_not_of(_Ptr, _Off, _Traits::length(_Ptr)));
		}

	size_type  find_last_not_of(_Elem _Ch, size_type _Off = npos) const
		{	
		return (find_last_not_of((const _Elem *)&_Ch, _Off, 1));
		}

	_Myt  substr(size_type _Off = 0, size_type _Count = npos) const
		{	
		return (_Myt(*this, _Off, _Count, get_allocator()));
		}

	int  compare(const _Myt& _Right) const
		{	
		return (compare(0, _Mysize, _Right._Myptr(), _Right.size()));
		}

	int  compare(size_type _Off, size_type _N0,
		const _Myt& _Right) const
		{	
		return (compare(_Off, _N0, _Right, 0, npos));
		}

	int  compare(size_type _Off,
		size_type _N0, const _Myt& _Right,
		size_type _Roff, size_type _Count) const
		{	
		if (_Right.size() < _Roff)
			_String_base::_Xran();	
		if (_Right._Mysize - _Roff < _Count)
			_Count = _Right._Mysize - _Roff;	
		return (compare(_Off, _N0, _Right._Myptr() + _Roff, _Count));
		}

	int  compare(const _Elem *_Ptr) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",2026);
		return (compare(0, _Mysize, _Ptr, _Traits::length(_Ptr)));
		}

	int  compare(size_type _Off, size_type _N0, const _Elem *_Ptr) const
		{	
		_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",2032);
		return (compare(_Off, _N0, _Ptr, _Traits::length(_Ptr)));
		}

	int  compare(size_type _Off,
		size_type _N0, const _Elem *_Ptr, size_type _Count) const
		{	

 
		if (_Count != 0)
			_Debug_pointer(_Ptr, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring",2042);
 #line 2044 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

		if (_Mysize < _Off)
			_String_base::_Xran();	
		if (_Mysize - _Off < _N0)
			_N0 = _Mysize - _Off;	

		size_type _Ans = _Traits::compare(_Myptr() + _Off, _Ptr,
			_N0 < _Count ? _N0 : _Count);
		return (_Ans != 0 ? (int)_Ans : _N0 < _Count ? -1
			: _N0 == _Count ? 0 : +1);
		}

	allocator_type  get_allocator() const
		{	
		return (_Mybase::_Alval);
		}

	enum
		{	
		_BUF_SIZE = 16 / sizeof (_Elem) < 1 ? 1
			: 16 / sizeof(_Elem)};

protected:
	enum
		{	
		_ALLOC_MASK = sizeof (_Elem) <= 1 ? 15
			: sizeof (_Elem) <= 2 ? 7
			: sizeof (_Elem) <= 4 ? 3
			: sizeof (_Elem) <= 8 ? 1 : 0};

	void  _Chassign(size_type _Off, size_type _Count, _Elem _Ch)
		{	
		if (_Count == 1)
			_Traits::assign(*(_Myptr() + _Off), _Ch);
		else
			_Traits::assign(_Myptr() + _Off, _Count, _Ch);
		}

	void  _Copy(size_type _Newsize, size_type _Oldlen)
		{	
		size_type _Newres = _Newsize | _ALLOC_MASK;
		if (max_size() < _Newres)
			_Newres = _Newsize;	
		else if (_Newres / 3 < _Myres / 2
			&& _Myres <= max_size() - _Myres / 2)
			_Newres = _Myres + _Myres / 2;	
		_Elem *_Ptr = 0;

		try {
			_Ptr = _Mybase::_Alval.allocate(_Newres + 1);
		} catch (...) {
			_Newres = _Newsize;	
			try {
				_Ptr = _Mybase::_Alval.allocate(_Newres + 1);
			} catch (...) {
			_Tidy(true);	
			throw;
			}
		}

		if (0 < _Oldlen)
			_Traits_helper::copy_s<_Traits>(_Ptr, _Newres + 1, _Myptr(), _Oldlen);	
		_Tidy(true);
		_Bx._Ptr = _Ptr;
		_Myres = _Newres;
		_Eos(_Oldlen);
		}

	void  _Eos(size_type _Newsize)
		{	
		_Traits::assign(_Myptr()[_Mysize = _Newsize], _Elem());
		}

	bool  _Grow(size_type _Newsize,
		bool _Trim = false)
		{	
			if (max_size() < _Newsize)
			_String_base::_Xlen();	
		if (_Myres < _Newsize)
			_Copy(_Newsize, _Mysize);	
		else if (_Trim && _Newsize < _BUF_SIZE)
			_Tidy(true,	
				_Newsize < _Mysize ? _Newsize : _Mysize);
		else if (_Newsize == 0)
			_Eos(0);	
		return (0 < _Newsize);	
		}

	bool  _Inside(const _Elem *_Ptr)
		{	
		if (_Ptr == 0 || _Ptr < _Myptr() || _Myptr() + _Mysize <= _Ptr)
			return (false);	
		else
			return (true);
		}

	static size_type __cdecl _Pdif(const_iterator _P2,
		const_iterator _P1)
		{	
		return ((_P2)._Myptr == 0 ? 0 : _P2 - _P1);
		}

	void  _Tidy(bool _Built = false,
		size_type _Newsize = 0)
		{	
		if (!_Built)
			;
		else if (_BUF_SIZE <= _Myres)
			{	
			_Elem *_Ptr = _Bx._Ptr;
			if (0 < _Newsize)
				_Traits_helper::copy_s<_Traits>(_Bx._Buf, _BUF_SIZE, _Ptr, _Newsize);
			_Mybase::_Alval.deallocate(_Ptr, _Myres + 1);
			}
		_Myres = _BUF_SIZE - 1;
		_Eos(_Newsize);
		}

	union _Bxty
		{	
		_Elem _Buf[_BUF_SIZE];
		_Elem *_Ptr;
		} _Bx;

	_Elem * _Myptr()
		{	
		return (_BUF_SIZE <= _Myres ? _Bx._Ptr : _Bx._Buf);
		}

	const _Elem * _Myptr() const
		{	
		return (_BUF_SIZE <= _Myres ? _Bx._Ptr : _Bx._Buf);
		}

	size_type _Mysize;	
	size_type _Myres;	
	};

	
template<class _Elem, class _Traits, class _Ax>
	class _Move_operation_category<basic_string<_Elem, _Traits, _Ax> >
	{
	public:
		typedef _Swap_move_tag _Move_cat;
	};

		
template<class _Elem,
	class _Traits,
	class _Alloc>
	 const typename basic_string<_Elem, _Traits, _Alloc>::size_type
		basic_string<_Elem, _Traits, _Alloc>::npos =
			(typename basic_string<_Elem, _Traits, _Alloc>::size_type)(-1);

		

template<class _Elem,
	class _Traits,
	class _Alloc> inline
	void __cdecl swap(basic_string<_Elem, _Traits, _Alloc>& _Left,
		basic_string<_Elem, _Traits, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

typedef basic_string<char, char_traits<char>, allocator<char> >
	string;
typedef basic_string<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> > wstring;

 

template class __declspec(dllimport) allocator<char>;
template class __declspec(dllimport) allocator<wchar_t>;
template class __declspec(dllimport) _String_val<char, allocator<char> >;
template class __declspec(dllimport) _String_val<wchar_t, allocator<wchar_t> >;
template class __declspec(dllimport) basic_string<char, char_traits<char>,
	allocator<char> >;
template class __declspec(dllimport) basic_string<wchar_t, char_traits<wchar_t>,
	allocator<wchar_t> >;




 #line 2229 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
}

 #pragma warning(default: 4251)
 #pragma warning(pop)
 #pragma pack(pop)
#line 2235 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"

#line 2237 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"
#line 2238 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xstring"






#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"


 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable: 4244)
#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"

namespace std {

		
template<class _Arg,
	class _Result>
	struct unary_function
	{	
	typedef _Arg argument_type;
	typedef _Result result_type;
	};

		
template<class _Arg1,
	class _Arg2,
	class _Result>
	struct binary_function
	{	
	typedef _Arg1 first_argument_type;
	typedef _Arg2 second_argument_type;
	typedef _Result result_type;
	};

		
template<class _Ty>
	struct plus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left + _Right);
		}
	};

		
template<class _Ty>
	struct minus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left - _Right);
		}
	};

		
template<class _Ty>
	struct multiplies
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left * _Right);
		}
	};

		
template<class _Ty>
	struct divides
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left / _Right);
		}
	};

		
template<class _Ty>
	struct modulus
		: public binary_function<_Ty, _Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left % _Right);
		}
	};

		
template<class _Ty>
	struct negate
		: public unary_function<_Ty, _Ty>
	{	
	_Ty operator()(const _Ty& _Left) const
		{	
		return (-_Left);
		}
	};

		
template<class _Ty>
	struct equal_to
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left == _Right);
		}
	};

		
template<class _Ty>
	struct not_equal_to
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left != _Right);
		}
	};

		
template<class _Ty>
	struct greater
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left > _Right);
		}
	};

		
template<class _Ty>
	struct less
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left < _Right);
		}
	};

		
template<class _Ty>
	struct greater_equal
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left >= _Right);
		}
	};

		
template<class _Ty>
	struct less_equal
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left <= _Right);
		}
	};

		
template<class _Ty>
	struct logical_and
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left && _Right);
		}
	};

		
template<class _Ty>
	struct logical_or
		: public binary_function<_Ty, _Ty, bool>
	{	
	bool operator()(const _Ty& _Left, const _Ty& _Right) const
		{	
		return (_Left || _Right);
		}
	};

		
template<class _Ty>
	struct logical_not
		: public unary_function<_Ty, bool>
	{	
	bool operator()(const _Ty& _Left) const
		{	
		return (!_Left);
		}
	};

		
template<class _Fn1>
	class unary_negate
	: public unary_function<typename _Fn1::argument_type, bool>
	{	
public:
	explicit unary_negate(const _Fn1& _Func)
		: _Functor(_Func)
		{	
		}

	bool operator()(const typename _Fn1::argument_type& _Left) const
		{	
		return (!_Functor(_Left));
		}

protected:
	_Fn1 _Functor;	
	};

		
template<class _Fn1> inline
	unary_negate<_Fn1> not1(const _Fn1& _Func)
	{	
	return (std::unary_negate<_Fn1>(_Func));
	}

		
template<class _Fn2>
	class binary_negate
		: public binary_function<typename _Fn2::first_argument_type,
			typename _Fn2::second_argument_type, bool>
	{	
public:
	explicit binary_negate(const _Fn2& _Func)
		: _Functor(_Func)
		{	
		}

	bool operator()(const typename _Fn2::first_argument_type& _Left,
		const typename _Fn2::second_argument_type& _Right) const
		{	
		return (!_Functor(_Left, _Right));
		}

protected:
	_Fn2 _Functor;	
	};

		
template<class _Fn2> inline
	binary_negate<_Fn2> not2(const _Fn2& _Func)
	{	
	return (std::binary_negate<_Fn2>(_Func));
	}

		
template<class _Fn2>
	class binder1st
		: public unary_function<typename _Fn2::second_argument_type,
			typename _Fn2::result_type>
	{	
public:
	typedef unary_function<typename _Fn2::second_argument_type,
		typename _Fn2::result_type> _Base;
	typedef typename _Base::argument_type argument_type;
	typedef typename _Base::result_type result_type;

	binder1st(const _Fn2& _Func,
		const typename _Fn2::first_argument_type& _Left)
		: op(_Func), value(_Left)
		{	
		}

	result_type operator()(const argument_type& _Right) const
		{	
		return (op(value, _Right));
		}

	result_type operator()(argument_type& _Right) const
		{	
		return (op(value, _Right));
		}

protected:
	_Fn2 op;	
	typename _Fn2::first_argument_type value;	
	};

		
template<class _Fn2,
	class _Ty> inline
	binder1st<_Fn2> bind1st(const _Fn2& _Func, const _Ty& _Left)
		{	
		typename _Fn2::first_argument_type _Val(_Left);
		return (std::binder1st<_Fn2>(_Func, _Val));
		}

		
template<class _Fn2>
	class binder2nd
		: public unary_function<typename _Fn2::first_argument_type,
			typename _Fn2::result_type>
	{	
public:
	typedef unary_function<typename _Fn2::first_argument_type,
		typename _Fn2::result_type> _Base;
	typedef typename _Base::argument_type argument_type;
	typedef typename _Base::result_type result_type;

	binder2nd(const _Fn2& _Func,
		const typename _Fn2::second_argument_type& _Right)
		: op(_Func), value(_Right)
		{	
		}

	result_type operator()(const argument_type& _Left) const
		{	
		return (op(_Left, value));
		}

	result_type operator()(argument_type& _Left) const
		{	
		return (op(_Left, value));
		}

protected:
	_Fn2 op;	
	typename _Fn2::second_argument_type value;	
	};

		
template<class _Fn2,
	class _Ty> inline
	binder2nd<_Fn2> bind2nd(const _Fn2& _Func, const _Ty& _Right)
	{	
	typename _Fn2::second_argument_type _Val(_Right);
	return (std::binder2nd<_Fn2>(_Func, _Val));
	}

		
template<class _Arg,
	class _Result,
	class _Fn = _Result (*)(_Arg)>
	class pointer_to_unary_function
		: public unary_function<_Arg, _Result>
	{	
public:
	explicit pointer_to_unary_function(_Fn _Left)
		: _Pfun(_Left)
		{	
		}

	_Result operator()(_Arg _Left) const
		{	
		return (_Pfun(_Left));
		}

protected:
	_Fn _Pfun;	
	};

		
template<class _Arg1,
	class _Arg2,
	class _Result,
	class _Fn = _Result (*)(_Arg1, _Arg2)>
	class pointer_to_binary_function
		: public binary_function<_Arg1, _Arg2, _Result>
	{	
public:
	explicit pointer_to_binary_function(_Fn _Left)
		: _Pfun(_Left)
		{	
		}

	_Result operator()(_Arg1 _Left, _Arg2 _Right) const
		{	
		return (_Pfun(_Left, _Right));
		}

protected:
	_Fn _Pfun;	
	};

		
template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result, _Result (__cdecl *)(_Arg)>
		ptr_fun(_Result (__cdecl *_Left)(_Arg))
	{	
	return (std::pointer_to_unary_function<_Arg, _Result, _Result (__cdecl *)(_Arg)>(_Left));
	}

 
template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result,
		_Result (__stdcall *)(_Arg)>
			ptr_fun(_Result (__stdcall *_Left)(_Arg))
	{	
	return (std::pointer_to_unary_function<_Arg, _Result, _Result (__stdcall *)(_Arg)>(_Left));
	}


template<class _Arg,
	class _Result> inline
	pointer_to_unary_function<_Arg, _Result,
		_Result (__fastcall *)(_Arg)>
			ptr_fun(_Result (__fastcall *_Left)(_Arg))
	{	
	return (std::pointer_to_unary_function<_Arg, _Result, _Result (__fastcall *)(_Arg)>(_Left));
	}

#line 417 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"
#line 418 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"












template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result, _Result(__cdecl *)(_Arg1, _Arg2)>
		ptr_fun(_Result (__cdecl *_Left)(_Arg1, _Arg2))
	{	
	return (std::pointer_to_binary_function<_Arg1, _Arg2, _Result, _Result (__cdecl *)(_Arg1, _Arg2)>(_Left));
	}

 
template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result(__stdcall *)(_Arg1, _Arg2)>
			ptr_fun(_Result (__stdcall *_Left)(_Arg1, _Arg2))
	{	
	return (std::pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__stdcall *)(_Arg1, _Arg2)>(_Left));
	}



template<class _Arg1,
	class _Arg2,
	class _Result> inline
	pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result(__fastcall *)(_Arg1, _Arg2)>
			ptr_fun(_Result (__fastcall *_Left)(_Arg1, _Arg2))
	{	
	return (std::pointer_to_binary_function<_Arg1, _Arg2, _Result,
		_Result (__fastcall *)(_Arg1, _Arg2)>(_Left));
	}

#line 465 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"
#line 466 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"















		
template<class _Result,
	class _Ty>
	class mem_fun_t
		: public unary_function<_Ty *, _Result>
	{	
public:
	explicit mem_fun_t(_Result (_Ty::*_Pm)())
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty *_Pleft) const
		{	
		return ((_Pleft->*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)();	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class mem_fun1_t
		: public binary_function<_Ty *, _Arg, _Result>
	{	
public:
	explicit mem_fun1_t(_Result (_Ty::*_Pm)(_Arg))
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty *_Pleft, _Arg _Right) const
		{	
		return ((_Pleft->*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg);	
	};

		
template<class _Result,
	class _Ty>
	class const_mem_fun_t
		: public unary_function<const _Ty *, _Result>
	{	
public:
	explicit const_mem_fun_t(_Result (_Ty::*_Pm)() const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty *_Pleft) const
		{	
		return ((_Pleft->*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)() const;	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class const_mem_fun1_t
		: public binary_function<const _Ty *, _Arg, _Result>
	{	
public:
	explicit const_mem_fun1_t(_Result (_Ty::*_Pm)(_Arg) const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty *_Pleft, _Arg _Right) const
		{	
		return ((_Pleft->*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg) const;	
	};

		
template<class _Result,
	class _Ty> inline
	mem_fun_t<_Result, _Ty> mem_fun(_Result (_Ty::*_Pm)())
	{	
	return (std::mem_fun_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_t<_Result, _Ty, _Arg> mem_fun(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (std::mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

template<class _Result,
	class _Ty> inline
	const_mem_fun_t<_Result, _Ty>
		mem_fun(_Result (_Ty::*_Pm)() const)
	{	
	return (std::const_mem_fun_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	const_mem_fun1_t<_Result, _Ty, _Arg>
		mem_fun(_Result (_Ty::*_Pm)(_Arg) const)
	{	
	return (std::const_mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_t<_Result, _Ty, _Arg> mem_fun1(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (std::mem_fun1_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty>
	class mem_fun_ref_t
		: public unary_function<_Ty, _Result>
	{	
public:
	explicit mem_fun_ref_t(_Result (_Ty::*_Pm)())
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty& _Left) const
		{	
		return ((_Left.*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)();	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class mem_fun1_ref_t
		: public binary_function<_Ty, _Arg, _Result>
	{	
public:
	explicit mem_fun1_ref_t(_Result (_Ty::*_Pm)(_Arg))
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(_Ty& _Left, _Arg _Right) const
		{	
		return ((_Left.*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg);	
	};

		
template<class _Result,
	class _Ty>
	class const_mem_fun_ref_t
		: public unary_function<_Ty, _Result>
	{	
public:
	explicit const_mem_fun_ref_t(_Result (_Ty::*_Pm)() const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty& _Left) const
		{	
		return ((_Left.*_Pmemfun)());
		}

private:
	_Result (_Ty::*_Pmemfun)() const;	
	};

		
template<class _Result,
	class _Ty,
	class _Arg>
	class const_mem_fun1_ref_t
		: public binary_function<_Ty, _Arg, _Result>
	{	
public:
	explicit const_mem_fun1_ref_t(_Result (_Ty::*_Pm)(_Arg) const)
		: _Pmemfun(_Pm)
		{	
		}

	_Result operator()(const _Ty& _Left, _Arg _Right) const
		{	
		return ((_Left.*_Pmemfun)(_Right));
		}

private:
	_Result (_Ty::*_Pmemfun)(_Arg) const;	
	};

		
template<class _Result,
	class _Ty> inline
	mem_fun_ref_t<_Result, _Ty> mem_fun_ref(_Result (_Ty::*_Pm)())
	{	
	return (std::mem_fun_ref_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_ref_t<_Result, _Ty, _Arg>
		mem_fun_ref(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (std::mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

template<class _Result,
	class _Ty> inline
	const_mem_fun_ref_t<_Result, _Ty>
		mem_fun_ref(_Result (_Ty::*_Pm)() const)
	{	
	return (std::const_mem_fun_ref_t<_Result, _Ty>(_Pm));
	}

template<class _Result,
	class _Ty,
	class _Arg> inline
	const_mem_fun1_ref_t<_Result, _Ty, _Arg>
		mem_fun_ref(_Result (_Ty::*_Pm)(_Arg) const)
	{	
	return (std::const_mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

		
template<class _Result,
	class _Ty,
	class _Arg> inline
	mem_fun1_ref_t<_Result, _Ty, _Arg> mem_fun1_ref(_Result (_Ty::*_Pm)(_Arg))
	{	
	return (std::mem_fun1_ref_t<_Result, _Ty, _Arg>(_Pm));
	}

 





























































































































#line 865 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"

}

namespace std {
	namespace tr1 {	
	
template<class _Kty>
	class hash
		: public unary_function<_Kty, size_t>
	{	
public:
	size_t operator()(const _Kty& _Keyval) const
		{	
		ldiv_t _Qrem = ldiv((size_t)_Keyval, 127773);

		_Qrem.rem = 16807 * _Qrem.rem - 2836 * _Qrem.quot;
		if (_Qrem.rem < 0)
			_Qrem.rem += 2147483647;
		return ((size_t)_Qrem.rem);
		}
	};

template<>
	class hash<std::string>
	{	
public:
	typedef std::string _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = _Keyval.size();
		size_t _Stride = 1 + _Last / 10;

		if (_Stride < _Last)
			_Last -= _Stride;
		for(; _First < _Last; _First += _Stride)
			_Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
		return (_Val);
		}
	};

template<>
	class hash<std::wstring>
	{	
public:
	typedef std::wstring _Kty;

	size_t operator()(const _Kty& _Keyval) const
		{	
		size_t _Val = 2166136261U;
		size_t _First = 0;
		size_t _Last = _Keyval.size();
		size_t _Stride = 1 + _Last / 10;

		if (_Stride < _Last)
			_Last -= _Stride;
		for(; _First < _Last; _First += _Stride)
			_Val = 16777619U * _Val ^ (size_t)_Keyval[_First];
		return (_Val);
		}
	};

	}	
}


 #pragma warning(default: 4244)
 #pragma warning(pop)
 #pragma pack(pop)
#line 937 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"

#line 939 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"
#line 940 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\functional"






















#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

#pragma once






 #pragma pack(push,8)
 #pragma warning(push,3)
#line 12 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

namespace std {

		
template<class _Container>
	class back_insert_iterator
		: public _Outit
	{	
public:
	typedef _Container container_type;
	typedef typename _Container::reference reference;

	typedef _Range_checked_iterator_tag _Checked_iterator_category;

	explicit back_insert_iterator(_Container& _Cont)
		: container(&_Cont)
		{	
		}

	back_insert_iterator<_Container>& operator=(
		typename _Container::const_reference _Val)
		{	
		container->push_back(_Val);
		return (*this);
		}

	back_insert_iterator<_Container>& operator*()
		{	
		return (*this);
		}

	back_insert_iterator<_Container>& operator++()
		{	
		return (*this);
		}

	back_insert_iterator<_Container> operator++(int)
		{	
		return (*this);
		}

protected:
	_Container *container;	
	};

		
template<class _Container> inline
	back_insert_iterator<_Container> back_inserter(_Container& _Cont)
	{	
	return (std::back_insert_iterator<_Container>(_Cont));
	}

		
template<class _Container>
	class front_insert_iterator
		: public _Outit
	{	
public:
	typedef _Container container_type;
	typedef typename _Container::reference reference;

	typedef _Range_checked_iterator_tag _Checked_iterator_category;

	explicit front_insert_iterator(_Container& _Cont)
		: container(&_Cont)
		{	
		}

	front_insert_iterator<_Container>& operator=(
		typename _Container::const_reference _Val)
		{	
		container->push_front(_Val);
		return (*this);
		}

	front_insert_iterator<_Container>& operator*()
		{	
		return (*this);
		}

	front_insert_iterator<_Container>& operator++()
		{	
		return (*this);
		}

	front_insert_iterator<_Container> operator++(int)
		{	
		return (*this);
		}

protected:
	_Container *container;	
	};

		
template<class _Container> inline
	front_insert_iterator<_Container> front_inserter(_Container& _Cont)
	{	
	return (std::front_insert_iterator<_Container>(_Cont));
	}

		
template<class _Container>
	class insert_iterator
		: public _Outit
	{	
public:
	typedef _Container container_type;
	typedef typename _Container::reference reference;

	typedef _Range_checked_iterator_tag _Checked_iterator_category;

	insert_iterator(_Container& _Cont, typename _Container::iterator _Where)
		: container(&_Cont), iter(_Where)
		{	
		}

	insert_iterator<_Container>& operator=(
		typename _Container::const_reference _Val)
		{	
		iter = container->insert(iter, _Val);
		++iter;
		return (*this);
		}

	insert_iterator<_Container>& operator*()
		{	
		return (*this);
		}

	insert_iterator<_Container>& operator++()
		{	
		return (*this);
		}

	insert_iterator<_Container>& operator++(int)
		{	
		return (*this);
		}

protected:
	_Container *container;	
	typename _Container::iterator iter;	
	};

		
template<class _Container,
	class _Iter> inline
	insert_iterator<_Container> inserter(_Container& _Cont, _Iter _Where)
	{	
	return (std::insert_iterator<_Container>(_Cont, _Where));
	}

		
template<class _Ty,
	class _Elem = char,
	class _Traits = char_traits<_Elem>,
	class _Diff = ptrdiff_t>
	class istream_iterator
		: public iterator<input_iterator_tag, _Ty, _Diff,
			const _Ty *, const _Ty&>
	{	
	typedef istream_iterator<_Ty, _Elem, _Traits, _Diff> _Myt;
public:
	typedef _Elem char_type;
	typedef _Traits traits_type;
	typedef basic_istream<_Elem, _Traits> istream_type;


	typedef _Range_checked_iterator_tag _Checked_iterator_category;
#line 183 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

	istream_iterator()
		: _Myistr(0)
		{	
		}

	istream_iterator(istream_type& _Istr)
		: _Myistr(&_Istr)
		{	
		_Getval();
		}

	const _Ty& operator*() const
		{	

 
		if (_Myistr == 0)
			{
			_Debug_message(L"istream_iterator is not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 201);
			{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 202, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 202, 0); };
			}
 

#line 207 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

		return (_Myval);
		}

	const _Ty *operator->() const
		{	
		return (&**this);
		}

	_Myt& operator++()
		{	

 
		if (_Myistr == 0)
			{
			_Debug_message(L"istream_iterator is not incrementable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 222);
			{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 223, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 223, 0); };
			}
 

#line 228 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

		_Getval();
		return (*this);
		}

	_Myt operator++(int)
		{	
		_Myt _Tmp = *this;
		++*this;
		return (_Tmp);
		}

	bool _Equal(const _Myt& _Right) const
		{	
		return (_Myistr == _Right._Myistr);
		}

protected:
	void _Getval()
		{	
		if (_Myistr != 0 && !(*_Myistr >> _Myval))
			_Myistr = 0;
		}

	static void _Xran()
		{	
		throw out_of_range("invalid istream_iterator");
		}

	istream_type *_Myistr;	
	_Ty _Myval;	
	};

		
template<class _Ty,
	class _Elem,
	class _Traits,
	class _Diff> inline
	bool operator==(
		const istream_iterator<_Ty, _Elem, _Traits, _Diff>& _Left,
		const istream_iterator<_Ty, _Elem, _Traits, _Diff>& _Right)
	{	
	return (_Left._Equal(_Right));
	}

template<class _Ty,
	class _Elem,
	class _Traits,
	class _Diff> inline
	bool operator!=(
		const istream_iterator<_Ty, _Elem, _Traits, _Diff>& _Left,
		const istream_iterator<_Ty, _Elem, _Traits, _Diff>& _Right)
	{	
	return (!(_Left == _Right));
	}

		
template<class _Ty,
	class _Elem = char,
	class _Traits = char_traits<_Elem> >
	class ostream_iterator
		: public _Outit
	{	
public:
	typedef _Elem char_type;
	typedef _Traits traits_type;
	typedef basic_ostream<_Elem, _Traits> ostream_type;


	typedef _Range_checked_iterator_tag _Checked_iterator_category;
#line 299 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

	ostream_iterator(ostream_type& _Ostr,
		const _Elem *_Delim = 0)
		: _Myostr(&_Ostr), _Mydelim(_Delim)
		{	
		}

	ostream_iterator<_Ty, _Elem, _Traits>& operator=(const _Ty& _Val)
		{	
		*_Myostr << _Val;
		if (_Mydelim != 0)
			*_Myostr << _Mydelim;

 
		if (!*_Myostr)
			{
			_Debug_message(L"ostream_iterator is not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 315);
			{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 316, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 316, 0); };
			}
 

#line 321 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

		return (*this);
		}

	ostream_iterator<_Ty, _Elem, _Traits>& operator*()
		{	
		return (*this);
		}

	ostream_iterator<_Ty, _Elem, _Traits>& operator++()
		{	
		return (*this);
		}

	ostream_iterator<_Ty, _Elem, _Traits> operator++(int)
		{	
		return (*this);
		}

protected:
	static void _Xran()
		{	
		throw out_of_range("invalid ostream_iterator");
		}

	const _Elem *_Mydelim;	
	ostream_type *_Myostr;	
	};

}

namespace stdext {


template <class _Cont, class _Iter = typename _Cont::iterator>
	class checked_iterator
		: public ::std:: iterator<
			typename ::std:: iterator_traits<_Iter>::iterator_category, 
			typename ::std:: iterator_traits<_Iter>::value_type, 
			typename ::std:: iterator_traits<_Iter>::difference_type, 
			typename ::std:: iterator_traits<_Iter>::pointer, 
			typename ::std:: iterator_traits<_Iter>::reference>
	{
	friend class checked_iterator;
public:
	typedef checked_iterator<_Cont, _Iter> _Myt;
	typedef typename ::std:: iterator_traits<_Iter>::difference_type difference_type;
	typedef typename ::std:: iterator_traits<_Iter>::pointer pointer;
	typedef typename ::std:: iterator_traits<_Iter>::reference reference;

	typedef ::std:: _Range_checked_iterator_tag _Checked_iterator_category;
	typedef _Iter _Inner_type;

	typedef _Iter _Checked_iterator_base_type;
 
	_Checked_iterator_base_type _Checked_iterator_base() const
	{
		return _Current;
	}

	void _Checked_iterator_assign_from_base(_Checked_iterator_base_type _Base)
	{
		_Current = _Base;
	}

	

	checked_iterator()
		: _Mycont(0)
	{
	}

	checked_iterator(_Cont& _C, _Iter _Ptr)
		: _Mycont(&_C), _Current(_Ptr)
	{
	}

	checked_iterator(const _Myt &_Right)
		: _Mycont(_Right._Mycont), _Current(_Right._Current)
	{
	}

	template <class Iter2>
	checked_iterator(const checked_iterator<_Cont, Iter2> &_Right)
		: _Mycont(_Right._Mycont), _Current(_Right._Current)
	{
	}

	_Iter base() const
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 411, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 411, 0); } ; };
		return _Current;
	}

	template <class Iter2>
	bool operator==(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		{ if (!(_Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 418, 0, L"(\"_Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 418, 0); } ; };
		return _Current == _Right._Current;
	}

	template <class Iter2>
	bool operator!=(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 425, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 425, 0); } ; };
		return !(*this == _Right);
	}

	template <class Iter2>
	bool operator<(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		{ if (!(_Mycont != 0 && _Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont != NULL && _Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 432, 0, L"(\"_Mycont != NULL && _Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 432, 0); } ; };
		return _Current < _Right._Current;
	}

	template <class Iter2>
	bool operator>(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		return _Right < *this;
	}

	template <class Iter2>
	bool operator<=(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		return !(_Right < *this);
	}

	template <class Iter2>
	bool operator>=(const checked_iterator<_Cont, Iter2>& _Right) const
	{
		return !(*this < _Right);
	}

	reference operator*() const
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 456, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 456, 0); } ; };
		{ if (!(_Current != _Mycont->end())) { (void) ((!!((("_Current != _Mycont->end()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 457, 0, L"(\"_Current != _Mycont->end()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 457, 0); } ; };
		return *_Current;
	}

	pointer operator->() const
	{
		return (&**this);
	}

	_Myt& operator++()
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 468, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 468, 0); } ; };
		{ if (!(_Current != _Mycont->end())) { (void) ((!!((("_Current != _Mycont->end()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 469, 0, L"(\"_Current != _Mycont->end()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 469, 0); } ; };
		++_Current;
		return *this;
	}

	_Myt operator++(int)
	{
		_Myt _Tmp = *this;
		++*this;
		return _Tmp;
	}

	_Myt& operator--()
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 483, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 483, 0); } ; };
		{ if (!(_Current != _Mycont->begin())) { (void) ((!!((("_Current != _Mycont->begin()", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 484, 0, L"(\"_Current != _Mycont->begin()\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 484, 0); } ; };
		--_Current;
		return *this;
	}

	_Myt operator--(int)
	{
		_Myt _Tmp = *this;
		--*this;
		return _Tmp;
	}

	

	_Myt& operator+=(difference_type _Off)
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 500, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 500, 0); } ; };
		{ if (!((_Mycont->end() - _Current) >= _Off && (_Mycont->begin() - _Current) <= _Off)) { (void) ((!!((("(_Mycont->end() - _Current) >= _Off && (_Mycont->begin() - _Current) <= _Off", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 501, 0, L"(\"(_Mycont->end() - _Current) >= _Off && (_Mycont->begin() - _Current) <= _Off\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 501, 0); } ; };
		_Current += _Off;
		return *this;
	}

	_Myt operator+(difference_type _Off) const
	{
		_Myt _Tmp = *this;
		return (_Tmp += _Off);
	}

	_Myt& operator-=(difference_type _Off)
	{
		return (*this += -_Off);
	}

	_Myt operator-(difference_type _Off) const
	{
		_Myt _Tmp = *this;
		return (_Tmp -= _Off);
	}

	difference_type operator-(const _Myt& _Right) const
	{
		{ if (!(_Mycont != 0 && _Mycont == _Right._Mycont)) { (void) ((!!((("_Mycont != NULL && _Mycont == _Right._Mycont", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 525, 0, L"(\"_Mycont != NULL && _Mycont == _Right._Mycont\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 525, 0); } ; };
		return _Current - _Right._Current;
	}

	reference operator[](difference_type _Off) const
	{
		{ if (!(_Mycont != 0)) { (void) ((!!((("_Mycont != NULL", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 531, 0, L"(\"_Mycont != NULL\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 531, 0); } ; };
		{ if (!((_Mycont->end() - _Current) > _Off && (_Mycont->begin() - _Current) <= _Off)) { (void) ((!!((("(_Mycont->end() - _Current) > _Off && (_Mycont->begin() - _Current) <= _Off", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 532, 0, L"(\"(_Mycont->end() - _Current) > _Off && (_Mycont->begin() - _Current) <= _Off\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator", 532, 0); } ; };
		return _Current[_Off];
	}

protected:
	void _Xran() const
	{	
		throw ::std:: out_of_range("invalid checked_iterator<T> subscript");
	}

	void _Xinvarg() const
	{	
		throw ::std:: invalid_argument("invalid checked_iterator<T> argument");
	}

	_Cont *_Mycont; 
	_Iter _Current; 
	};

}


 #pragma warning(pop)
 #pragma pack(pop)
#line 557 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"

#line 559 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"
#line 560 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iterator"






















#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"



 #pragma pack(push,8)
 #pragma warning(push,3)
#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"
namespace std {

		
template<class _Ty> inline
	pair<_Ty  *, ptrdiff_t>
		get_temporary_buffer(ptrdiff_t _Count)
	{	
	_Ty  *_Pbuf;

	if (_Count <= 0)
		_Count = 0;
	else if (((size_t)(-1) / _Count) < sizeof (_Ty))
		throw std::bad_alloc(0);

	for (_Pbuf = 0; 0 < _Count; _Count /= 2)
		if ((_Pbuf = (_Ty  *)operator new(
			(size_t)_Count * sizeof (_Ty), nothrow)) != 0)
			break;

	return (pair<_Ty  *, ptrdiff_t>(_Pbuf, _Count));
	}

		
template<class _Ty> inline
	void return_temporary_buffer(_Ty *_Pbuf)
	{	
	operator delete(_Pbuf);
	}

		
template<class _InIt,
	class _FwdIt> inline
	_FwdIt _Uninit_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 48);
	_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory",49);
	_FwdIt _Next = _Dest;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		_Construct(&*_Dest, *_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	return (_Dest);
	}

template<class _Ty1,
	class _Ty2> inline
	_Ty2 _Uninit_copy(_Ty1 _First, _Ty1 _Last, _Ty2 _Dest,
		_Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 68);
	_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory",69);
	size_t _Count = (size_t)(_Last - _First);
	_Ty2 _Result = _Dest + _Count;
	if (_Count > 0)
		::memmove_s((&*_Dest), (_Count * sizeof (*_First)), (&*_First), (_Count * sizeof (*_First)));	
	return _Result;
	}



template<class _InIt,
	class _FwdIt> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest)
	{	
	return (_Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, size_t _Size>
inline
_FwdElem* uninitialized_copy(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size])
	{	
	return (uninitialized_copy(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size)).base());
	}

template<class _InIt,
	class _FwdIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest)
	{	
	return (_Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		_Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}











#line 115 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		
template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninit_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 123);
	_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory",124);
	_FwdIt _Next = _Dest;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		_Al.construct(_Dest, *_First);
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Al.destroy(_Next);
	throw;
	}
	return (_Dest);
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Uninit_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc&, _Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 144);
	_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory",145);
	size_t _Count = (size_t)(_Last - _First);
	_FwdIt _Result = _Dest + _Count;
	if (_Count > 0)
		::memmove_s((&*_Dest), (_Count * sizeof (*_First)), (&*_First), (_Count * sizeof (*_First)));	
	return _Result;
	}



template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		_Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, class _Alloc, size_t _Size>
inline
_FwdElem* _Uninitialized_copy(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size],
		_Alloc& _Al)
	{	
	return (_Uninitialized_copy(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size), _Al).base());
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		_Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}













#line 198 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		
template<class _InIt, class _FwdIt, class _Alloc, class _MoveCatTy>
inline
	_FwdIt _Uninit_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _MoveCatTy, _Range_checked_iterator_tag)
	{	
	return ::stdext:: unchecked_uninitialized_copy(_First, _Last, _Dest, _Al);
	}

template<class _InIt, class _FwdIt, class _Alloc>
inline
	_FwdIt _Uninit_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al, _Swap_move_tag, _Range_checked_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 213);
	_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory",214);
	_FwdIt _Next = _Dest;
	
	typename _Alloc::value_type _Val;

	try {
	for (; _First != _Last; ++_Dest, ++_First)
		{
		_Al.construct(_Dest, _Val);
		::std:: swap(*_Dest, *_First);
		}
	} catch (...) {
	for (; _Next != _Dest; ++_Next)
		_Al.destroy(_Next);
	throw;
	}
	return (_Dest);
	}



template<class _InIt, class _FwdIt, class _Alloc>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		_Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, class _Alloc, size_t _Size>
inline
_FwdElem* _Uninitialized_move(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size],
		_Alloc& _Al)
	{	
	return (_Uninitialized_move(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size), _Al).base());
	}

template<class _InIt, class _FwdIt, class _Alloc>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (_Uninit_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		_Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}












#line 275 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

    
template<class _FwdIt,
	class _Tval> inline
	void _Uninit_fill(_FwdIt _First, _FwdIt _Last, const _Tval& _Val,
		_Nonscalar_ptr_iterator_tag)
	{	
	_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 282);
	_FwdIt _Next = _First;

	try {
	for (; _First != _Last; ++_First)
		_Construct(&*_First, _Val);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	}

template<class _Ty,
	class _Tval> inline
	void _Uninit_fill(_Ty *_First, _Ty *_Last, const _Tval& _Val,
		_Scalar_ptr_iterator_tag)
	{	
	std::fill(_First, _Last, _Val);
	}

template<class _FwdIt,
	class _Tval> inline
	void uninitialized_fill(_FwdIt _First, _FwdIt _Last, const _Tval& _Val)
	{	
	_Uninit_fill(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Val, _Ptr_cat(_First, _First));
	}

		
template<class _FwdIt,
	class _Diff,
	class _Tval> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val,
		_Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	

 


 #line 322 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

	_FwdIt _Next = _First;

	try {
	for (; 0 < _Count; --_Count, ++_First)
		_Construct(&*_First, _Val);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Destroy(&*_Next);
	throw;
	}
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val,
		_Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
	::stdext:: unchecked_fill_n(&*_First, _Count, _Val);
	}



template<class _FwdIt,
	class _Diff,
	class _Tval> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
	_Uninit_fill_n(_First, _Count, _Val, _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdElem, class _Diff, class _Tval, size_t _Size>
inline
void uninitialized_fill_n(_FwdElem (&_First)[_Size], _Diff _Count, const _Tval& _Val)
	{	
	uninitialized_fill_n(::stdext:: make_checked_array_iterator(_First, _Size), _Count, _Val);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
	_Uninit_fill_n(_First, _Count, _Val, _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}











#line 381 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		
template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al, _Nonscalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	

 


 #line 395 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

	_FwdIt _Next = _First;

	try {
	for (; 0 < _Count; --_Count, ++_First)
		_Al.construct(_First, _Val);
	} catch (...) {
	for (; _Next != _First; ++_Next)
		_Al.destroy(_Next);
	throw;
	}
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
	void _Uninit_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc&, _Scalar_ptr_iterator_tag, _Range_checked_iterator_tag)
	{	
		::stdext:: unchecked_fill_n(_First, _Count, _Val);
	}



template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result _Uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	_Uninit_fill_n(_First, _Count, _Val, _Al,
		_Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdElem, class _Diff, class _Tval, class _Alloc, size_t _Size>
inline
void _Uninitialized_fill_n(_FwdElem (&_First)[_Size], _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	_Uninitialized_fill_n(::stdext:: make_checked_array_iterator(_First, _Size), _Count, _Val, _Al);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result _Uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	_Uninit_fill_n(_First, _Count, _Val, _Al,
		_Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}














#line 465 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		
template<class _FwdIt,
	class _Ty>
	class raw_storage_iterator
		: public _Outit
	{	
public:
	typedef _FwdIt iterator_type;	
	typedef _FwdIt iter_type;	
	typedef _Ty element_type;	

	explicit raw_storage_iterator(_FwdIt _First)
		: _Next(_First)
		{	
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator*()
		{	
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator=(const _Ty& _Val)
		{	
		_Construct(&*_Next, _Val);
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty>& operator++()
		{	
		++_Next;
		return (*this);
		}

	raw_storage_iterator<_FwdIt, _Ty> operator++(int)
		{	
		raw_storage_iterator<_FwdIt, _Ty> _Ans = *this;
		++_Next;
		return (_Ans);
		}

private:
	_FwdIt _Next;	
	};

		
template<class _Ty>
	class _Temp_iterator
		: public _Outit
	{	
public:
	typedef _Ty  *_Pty;


	typedef _Range_checked_iterator_tag _Checked_iterator_category;
#line 521 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

	_Temp_iterator(ptrdiff_t _Count = 0)
		{	
		_Buf._Begin = 0;
		_Buf._Current = 0;
		_Buf._Hiwater = 0;
		_Buf._Size = _Count;	
		_Pbuf = &_Buf;
		}

	_Temp_iterator(const _Temp_iterator<_Ty>& _Right)
		{	
		_Buf._Begin = 0;	
		_Buf._Current = 0;
		_Buf._Hiwater = 0;
		_Buf._Size = 0;
		*this = _Right;
		}

	~_Temp_iterator()
		{	
		if (_Buf._Begin != 0)
			{	
			for (_Pty _Next = _Buf._Begin;
				_Next != _Buf._Hiwater; ++_Next)
				_Destroy(&*_Next);
			std::return_temporary_buffer(_Buf._Begin);
			}
		}

	_Temp_iterator<_Ty>& operator=(const _Temp_iterator<_Ty>& _Right)
		{	
		_Pbuf = _Right._Pbuf;
		return (*this);
		}

	_Temp_iterator<_Ty>& operator=(const _Ty& _Val)
		{	
		if (_Pbuf->_Current < _Pbuf->_Hiwater)
			*_Pbuf->_Current++ = _Val;	
		else
			{	
			{ if (!((_Pbuf->_Current - _Pbuf->_Begin) < _Pbuf->_Size)) { (void) ((!!((("(_Pbuf->_Current - _Pbuf->_Begin) < _Pbuf->_Size", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 563, 0, L"(\"(_Pbuf->_Current - _Pbuf->_Begin) < _Pbuf->_Size\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 563, 0); } ; };
			_Pty _Ptr = &*_Pbuf->_Current;
			_Construct(_Ptr, _Val);
			_Pbuf->_Hiwater = ++_Pbuf->_Current;
			}
		return (*this);
		}

	_Temp_iterator<_Ty>& operator*()
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& operator++()
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& operator++(int)
		{	
		return (*this);
		}

	_Temp_iterator<_Ty>& _Init()
		{	
		_Pbuf->_Current = _Pbuf->_Begin;
		return (*this);
		}

	_Pty _First() const
		{	
		return (_Pbuf->_Begin);
		}

	_Pty _Last() const
		{	
		return (_Pbuf->_Current);
		}

	ptrdiff_t _Maxlen()
		{	
		if (_Pbuf->_Begin == 0 && 0 < _Pbuf->_Size)
			{	
			pair<_Pty, ptrdiff_t> _Pair =
				std::get_temporary_buffer<_Ty>(_Pbuf->_Size);

			_Pbuf->_Begin = _Pair.first;
			_Pbuf->_Current = _Pair.first;
			_Pbuf->_Hiwater = _Pair.first;
			_Pbuf->_Size = _Pair.second;
			}
		return (_Pbuf->_Size);
		}

	static void _Xinvarg()
		{	
		throw invalid_argument("invalid _Temp_iterator<T> argument");
		}

private:
	struct _Bufpar
		{	
		_Pty _Begin;	
		_Pty _Current;	
		_Pty _Hiwater;	
		ptrdiff_t _Size;	
		};
	_Bufpar _Buf;	
	_Bufpar *_Pbuf;	
	};

		
template<class _Ty>
	class auto_ptr;

template<class _Ty>
	struct auto_ptr_ref
		{	
	explicit auto_ptr_ref(_Ty *_Right)
		: _Ref(_Right)
		{	
		}

	_Ty *_Ref;	
	};

template<class _Ty>
	class auto_ptr
		{	
public:
	typedef _Ty element_type;

	explicit auto_ptr(_Ty *_Ptr = 0) throw ()
		: _Myptr(_Ptr)
		{	
		}

	auto_ptr(auto_ptr<_Ty>& _Right) throw ()
		: _Myptr(_Right.release())
		{	
		}

	auto_ptr(auto_ptr_ref<_Ty> _Right) throw ()
		{	
		_Ty *_Ptr = _Right._Ref;
		_Right._Ref = 0;	
		_Myptr = _Ptr;	
		}

	template<class _Other>
		operator auto_ptr<_Other>() throw ()
		{	
		return (auto_ptr<_Other>(*this));
		}

	template<class _Other>
		operator auto_ptr_ref<_Other>() throw ()
		{	
		_Other *_Cvtptr = _Myptr;	
		auto_ptr_ref<_Other> _Ans(_Cvtptr);
		_Myptr = 0;	
		return (_Ans);
		}


	template<class _Other>
		auto_ptr<_Ty>& operator=(auto_ptr<_Other>& _Right) throw ()
		{	
		reset(_Right.release());
		return (*this);
		}

	template<class _Other>
		auto_ptr(auto_ptr<_Other>& _Right) throw ()
		: _Myptr(_Right.release())
		{	
		}

	auto_ptr<_Ty>& operator=(auto_ptr<_Ty>& _Right) throw ()
		{	
		reset(_Right.release());
		return (*this);
		}

	auto_ptr<_Ty>& operator=(auto_ptr_ref<_Ty> _Right) throw ()
		{	
		_Ty *_Ptr = _Right._Ref;
		_Right._Ref = 0;	
		reset(_Ptr);	
		return (*this);
		}

	~auto_ptr()
		{	
		if (_Myptr != 0)
			delete _Myptr;
		}

	_Ty& operator*() const throw ()
		{	

 
		if (_Myptr == 0)
			_Debug_message(L"auto_ptr not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 726);
 #line 728 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		;

		return (*get());
		}

	_Ty *operator->() const throw ()
		{	

 
		if (_Myptr == 0)
			_Debug_message(L"auto_ptr not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory", 739);
 #line 741 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

		return (get());
		}

	_Ty *get() const throw ()
		{	
		return (_Myptr);
		}

	_Ty *release() throw ()
		{	
		_Ty *_Tmp = _Myptr;
		_Myptr = 0;
		return (_Tmp);
		}

	void reset(_Ty* _Ptr = 0)
		{	
		if (_Ptr != _Myptr && _Myptr != 0)
			delete _Myptr;
		_Myptr = _Ptr;
		}

private:
	_Ty *_Myptr;	
	};
}

namespace stdext {

template<class _InIt,
	class _FwdIt> inline
	_FwdIt unchecked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest)
	{	
		return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
			::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt,
	class _FwdIt> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest)
	{	
	return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, size_t _Size>
inline
_FwdElem* checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size])
	{	
	return (checked_uninitialized_copy(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size)).base());
	}

template<class _InIt,
	class _FwdIt> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest)
	{	
	return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest,
		::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt unchecked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
		return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
			::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, class _Alloc, size_t _Size>
inline
_FwdElem* checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size],
		_Alloc& _Al)
	{	
	return (checked_uninitialized_copy(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size), _Al).base());
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result checked_uninitialized_copy(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (::std:: _Uninit_copy(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		::std:: _Ptr_cat(_First, _Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt,
	class _FwdIt,
	class _Alloc> inline
	_FwdIt _Unchecked_uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
		return (::std:: _Uninit_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
			::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdIt, class _Alloc>
inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Checked_uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (::std:: _Uninit_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _InIt, class _FwdElem, class _Alloc, size_t _Size>
inline
_FwdElem* _Checked_uninitialized_move(_InIt _First, _InIt _Last, _FwdElem (&_Dest)[_Size],
		_Alloc& _Al)
	{	
	return (_Checked_uninitialized_move(_First, _Last,
		::stdext:: make_checked_array_iterator(_Dest, _Size), _Al).base());
	}

template<class _InIt, class _FwdIt, class _Alloc>
inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, _FwdIt >::_Result _Checked_uninitialized_move(_InIt _First, _InIt _Last, _FwdIt _Dest,
		_Alloc& _Al)
	{	
	return (::std:: _Uninit_move(::std:: _Checked_base(_First), ::std:: _Checked_base(_Last), _Dest, _Al,
		::std:: _Move_cat(_Dest), ::std:: _Range_checked_iterator_tag()));
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
	void unchecked_uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
		::std:: _Uninit_fill_n(_First, _Count, _Val, ::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result checked_uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
	::std:: _Uninit_fill_n(_First, _Count, _Val, ::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdElem, class _Diff, class _Tval, size_t _Size>
inline
void checked_uninitialized_fill_n(_FwdElem (&_First)[_Size], _Diff _Count, const _Tval& _Val)
	{	
	checked_uninitialized_fill_n(::stdext:: make_checked_array_iterator(_First, _Size), _Count, _Val);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result checked_uninitialized_fill_n(_FwdIt _First, _Diff _Count, const _Tval& _Val)
	{	
	::std:: _Uninit_fill_n(_First, _Count, _Val, ::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
	void unchecked_uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
		::std:: _Uninit_fill_n(_First, _Count, _Val, _Al,
			::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
typename ::std:: _Enable_if< ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result checked_uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	::std:: _Uninit_fill_n(_First, _Count, _Val, _Al,
		::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

template<class _FwdElem, class _Diff, class _Tval, class _Alloc, size_t _Size>
inline
void checked_uninitialized_fill_n(_FwdElem (&_First)[_Size], _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	checked_uninitialized_fill_n(::stdext:: make_checked_array_iterator(_First, _Size), _Count, _Val, _Al);
	}

template<class _FwdIt,
	class _Diff,
	class _Tval,
	class _Alloc> inline
__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
typename ::std:: _Enable_if< ! ::std:: _Is_checked_iterator< _FwdIt >::_Result, void >::_Result checked_uninitialized_fill_n(_FwdIt _First, _Diff _Count,
		const _Tval& _Val, _Alloc& _Al)
	{	
	::std:: _Uninit_fill_n(_First, _Count, _Val, _Al,
		::std:: _Ptr_cat(_First, _First), ::std:: _Range_checked_iterator_tag());
	}

}


 #pragma warning(pop)
 #pragma pack(pop)
#line 962 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"

#line 964 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"
#line 965 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\memory"
























#line 8 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

#pragma once







 #pragma pack(push,8)
 #pragma warning(push,3)
#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"
namespace std {





		
class logic_error
	: public std:: exception
	{	
public:
	explicit  logic_error(const string& _Message)
		: _Str(_Message)
		{	
		}

	virtual  ~logic_error() throw ()
		{	
		}

	virtual const char * what() const throw ()
		{	
		return (_Str.c_str());
		}

 





#line 45 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

private:
	string _Str;	
	};

		
class domain_error
	: public logic_error
	{	
public:
	explicit  domain_error(const string& _Message)
		: logic_error(_Message)
		{	
		}

	virtual  ~domain_error() throw ()
		{	
		}

 





#line 71 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class invalid_argument
	: public logic_error
	{	
public:
	explicit  invalid_argument(const string& _Message)
		: logic_error(_Message)
		{	
		}

	virtual  ~invalid_argument() throw ()
		{	
		}

 





#line 95 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class length_error
	: public logic_error
	{	
public:
	explicit  length_error(const string& _Message)
		: logic_error(_Message)
		{	
		}

	virtual  ~length_error() throw ()
		{	
		}

 





#line 119 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class out_of_range
	: public logic_error
	{	
public:
	explicit  out_of_range(const string& _Message)
		: logic_error(_Message)
		{	
		}

	virtual  ~out_of_range() throw ()
		{	
		}

 





#line 143 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class runtime_error
	: public std:: exception
	{	
public:
	explicit  runtime_error(const string& _Message)
		: _Str(_Message)
		{	
		}

	virtual  ~runtime_error() throw ()
		{	
		}

	virtual const char * what() const throw ()
		{	
		return (_Str.c_str());
		}

 





#line 172 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

private:
	string _Str;	
	};

		
class overflow_error
	: public runtime_error
	{	
public:
	explicit  overflow_error(const string& _Message)
		: runtime_error(_Message)
		{	
		}

	virtual  ~overflow_error() throw ()
		{	
		}

 





#line 198 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class underflow_error
	: public runtime_error
	{	
public:
	explicit  underflow_error(const string& _Message)
		: runtime_error(_Message)
		{	
		}

	virtual  ~underflow_error() throw ()
		{	
		}

 





#line 222 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};

		
class range_error
	: public runtime_error
	{	
public:
	explicit  range_error(const string& _Message)
		: runtime_error(_Message)
		{	
		}

	virtual  ~range_error() throw ()
		{	
		}

 





#line 246 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

	};























}

 #pragma warning(pop)
 #pragma pack(pop)
#line 276 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"

#line 278 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"
#line 279 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\stdexcept"





#line 9 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"


 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable:4127)
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

namespace std {

		
template<class _Traits>
	class _Tree_nod
		: public _Traits	
	{	
protected:
	struct _Node;
	friend struct _Node;
	typedef _Node *_Nodeptr;	

	typedef typename _Traits::allocator_type allocator_type;
	typedef typename _Traits::key_compare key_compare;
	typedef typename _Traits::value_type value_type;

	struct _Node
		{	
		_Node(_Nodeptr _Larg, _Nodeptr _Parg, _Nodeptr _Rarg,
			const value_type& _Val, char _Carg)
			: _Left(_Larg), _Parent(_Parg), _Right(_Rarg),
				_Myval(_Val), _Color(_Carg), _Isnil(false)
			{	
			}

		_Nodeptr _Left;	
		_Nodeptr _Parent;	
		_Nodeptr _Right;	
		value_type _Myval;	
		char _Color;	
		char _Isnil;	
		};

	_Tree_nod(const key_compare& _Parg,
		allocator_type _Al)
		: _Traits(_Parg, _Al), _Alnod(_Al)
		{	
		}

	typename allocator_type::template rebind<_Node>::other
		_Alnod;	
	};

		
template<class _Traits>
	class _Tree_ptr
		: public _Tree_nod<_Traits>
	{	
 
public:
 

#line 69 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
	typedef _Tree_nod<_Traits> _Mybase;
	typedef typename _Mybase::_Node _Node;
	typedef typename _Mybase::_Nodeptr _Nodeptr;
	typedef typename _Traits::allocator_type allocator_type;
	typedef typename _Traits::key_compare key_compare;

	_Tree_ptr(const key_compare& _Parg,
		allocator_type _Al)
		: _Tree_nod<_Traits>(_Parg, _Al), _Alptr(_Al)
		{	
		}

	typename allocator_type::template rebind<_Nodeptr>::other
		_Alptr;	
	};

		
template<class _Traits>
	class _Tree_val
		: public _Tree_ptr<_Traits>
	{	
protected:
	typedef typename _Traits::allocator_type allocator_type;
	typedef typename _Traits::key_compare key_compare;

	_Tree_val(const key_compare& _Parg,
		allocator_type _Al)
		: _Tree_ptr<_Traits>(_Parg, _Al), _Alval(_Al)
		{	
		}

	allocator_type _Alval;	
	};

		
template<class _Traits>
	class _Tree
		: public _Tree_val<_Traits>
	{	
public:
	typedef _Tree<_Traits> _Myt;
	typedef _Tree_val<_Traits> _Mybase;
	typedef typename _Traits::key_type key_type;
	typedef typename _Traits::key_compare key_compare;
	typedef typename _Traits::value_compare value_compare;
	typedef typename _Traits::value_type value_type;
	typedef typename _Traits::allocator_type allocator_type;

 



#line 122 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
	typedef typename allocator_type::pointer _ITptr;
	typedef typename allocator_type::reference _IReft;
 #line 125 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

protected:

	typedef typename _Mybase::_Node _Node;
	typedef typename _Mybase::_Nodeptr _Nodeptr;

	typedef typename allocator_type::template rebind<_Nodeptr>::other
		_Nodeptr_alloc;
	typedef typename _Nodeptr_alloc::reference _Nodepref;

	typedef typename allocator_type::template rebind<key_type>::other
		_Key_alloc;
	typedef typename _Key_alloc::const_reference _Keyref;

	typedef typename allocator_type::template rebind<char>::other
		_Char_alloc;
	typedef typename _Char_alloc::reference _Charref;


	typedef typename allocator_type::reference _Vref;

	enum _Redbl
		{	
		_Red, _Black};

	static _Charref _Color(_Nodeptr _Pnode)
		{	
		return ((_Charref)(*_Pnode)._Color);
		}

	static _Charref _Isnil(_Nodeptr _Pnode)
		{	
		return ((_Charref)(*_Pnode)._Isnil);
		}

	static _Keyref _Key(_Nodeptr _Pnode)
		{	
		return (_Mybase::_Kfn(_Myval(_Pnode)));
		}

	static _Nodepref _Left(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Left);
		}

	static _Nodepref _Parent(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Parent);
		}

	static _Nodepref _Right(_Nodeptr _Pnode)
		{	
		return ((_Nodepref)(*_Pnode)._Right);
		}

	static _Vref _Myval(_Nodeptr _Pnode)
		{	
		return ((_Vref)(*_Pnode)._Myval);
		}

public:
	typedef typename allocator_type::size_type size_type;
	typedef typename allocator_type::difference_type _Dift;
	typedef _Dift difference_type;
	typedef typename allocator_type::pointer _Tptr;
	typedef typename allocator_type::const_pointer _Ctptr;
	typedef typename allocator_type::reference _Reft;
	typedef _Tptr pointer;
	typedef _Ctptr const_pointer;
	typedef _Reft reference;
	typedef typename allocator_type::const_reference const_reference;

		
	class const_iterator;
	friend class const_iterator;

	class const_iterator
		: public _Bidit<value_type, _Dift, _Ctptr, const_reference>
	{	
	public:
		friend class _Tree<_Traits>;
		typedef bidirectional_iterator_tag iterator_category;
		typedef _Dift difference_type;
		typedef _Ctptr pointer;
		typedef const_reference reference;


		typedef _Range_checked_iterator_tag _Checked_iterator_category;
#line 214 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		const_iterator()
			: _Ptr(0)
			{	
			}

 
 

		const_iterator(_Nodeptr _Pnode, const _Myt *_Plist=0)
			: _Ptr(_Pnode)
			{	
			this->_Adopt(_Plist);
			}

 
















#line 247 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		const_reference operator*() const
			{	

 
			if (this->_Mycont == 0
				|| _Ptr == 0
				|| _Ptr == ((_Myt *)this->_Mycont)->_Myhead)
				{
				_Debug_message(L"map/set iterator not dereferencable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 256);
				{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 257, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 257, 0); };
				}
 


#line 263 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

			return (_Myval(_Ptr));
			}

		_Ctptr operator->() const
			{	
			return (&**this);
			}

		const_iterator& operator++()
			{	
			_Inc();
			return (*this);
			}

		const_iterator operator++(int)
			{	
			const_iterator _Tmp = *this;
			++*this;
			return (_Tmp);
			}

		const_iterator& operator--()
			{	
			_Dec();
			return (*this);
			}

		const_iterator operator--(int)
			{	
			const_iterator _Tmp = *this;
			--*this;
			return (_Tmp);
			}

		bool operator==(const const_iterator& _Right) const
			{	

 
			if (this->_Mycont == 0 || this->_Mycont != _Right._Mycont)
				{
				_Debug_message(L"map/set iterators incompatible", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 304);
				{ (void) ((!!((("Standard C++ Libraries Invalid Argument", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 305, 0, L"(\"Standard C++ Libraries Invalid Argument\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 305, 0); };
				}
 

#line 310 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

			return (_Ptr == _Right._Ptr);
			}

		bool operator!=(const const_iterator& _Right) const
			{	
			return (!(*this == _Right));
			}

		void _Dec()
			{	

 
			if (this->_Mycont == 0
				|| _Ptr == 0)
				{
				_Debug_message(L"map/set iterator not decrementable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 326);
				{ (void) ((!!((("Standard C++ Libraries Invalid Argument", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 327, 0, L"(\"Standard C++ Libraries Invalid Argument\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"invalid argument\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 327, 0); };
				}
 

#line 332 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

			if (_Isnil(_Ptr))
			{
				_Ptr = _Right(_Ptr);	
   				if (_Isnil(_Ptr))

				{
					_Debug_message(L"map/set iterator not decrementable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 339);
					{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 340, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 340, 0); };
				}






#line 349 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
			}
			else if (!_Isnil(_Left(_Ptr)))
				_Ptr = _Max(_Left(_Ptr));	
			else
				{	
				_Nodeptr _Pnode;
				while (!_Isnil(_Pnode = _Parent(_Ptr))
					&& _Ptr == _Left(_Pnode))
					_Ptr = _Pnode;	
				if (_Isnil(_Ptr))
 
 					{
					_Debug_message(L"map/set iterator not decrementable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 361);
					{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 362, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 362, 0); };
					}
 





#line 371 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				else
					_Ptr = _Pnode;	
				}
			}

		void _Inc()
			{	

 
			if (this->_Mycont == 0
				|| _Ptr == 0
				|| _Isnil(_Ptr))
				{
				_Debug_message(L"map/set iterator not incrementable", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 384);
				{ (void) ((!!((("Standard C++ Libraries Out of Range", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 385, 0, L"(\"Standard C++ Libraries Out of Range\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 385, 0); };
				}
 






#line 395 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

			else if (!_Isnil(_Right(_Ptr)))
				_Ptr = _Min(_Right(_Ptr));	
			else
				{	
				_Nodeptr _Pnode;
				while (!_Isnil(_Pnode = _Parent(_Ptr))
					&& _Ptr == _Right(_Pnode))
					_Ptr = _Pnode;	
				_Ptr = _Pnode;	
				}
			}

		_Nodeptr _Mynode() const
			{	
			return (_Ptr);
			}

 
    public:
 

#line 418 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
		_Nodeptr _Ptr;	
		};

		
	class iterator;
	friend class iterator;

	class iterator
		: public const_iterator
	{	
	public:
		typedef bidirectional_iterator_tag iterator_category;
		typedef _Dift difference_type;
		typedef _ITptr pointer;
		typedef _IReft reference;

		iterator()
			{	
			}

 
 

		iterator(_Nodeptr _Pnode, const _Myt *_Plist=0)
			: const_iterator(_Pnode, _Plist)
			{	
			}

 














#line 462 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		reference operator*() const
			{	
			return ((reference)**(const_iterator *)this);
			}

		pointer operator->() const
			{	
			return (&**this);
			}

		iterator& operator++()
			{	
			++(*(const_iterator *)this);
			return (*this);
			}

		iterator operator++(int)
			{	
			iterator _Tmp = *this;
			++*this;
			return (_Tmp);
			}

		iterator& operator--()
			{	
			--(*(const_iterator *)this);
			return (*this);
			}

		iterator operator--(int)
			{	
			iterator _Tmp = *this;
			--*this;
			return (_Tmp);
			}
		};

	typedef std::reverse_iterator<iterator> reverse_iterator;
	typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
	typedef pair<iterator, bool> _Pairib;
	typedef pair<iterator, iterator> _Pairii;
	typedef pair<const_iterator, const_iterator> _Paircc;

	explicit _Tree(const key_compare& _Parg,
		const allocator_type& _Al)
		: _Mybase(_Parg, _Al)
		{	
		_Init();
		}

	_Tree(const value_type *_First, const value_type *_Last,
		const key_compare& _Parg, const allocator_type& _Al)
		: _Mybase(_Parg, _Al)
		{	
		_Init();
		try {
		insert(_First, _Last);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	_Tree(const _Myt& _Right)
		: _Mybase(_Right.key_comp(), _Right.get_allocator())
		{	
		_Init();
		try {
		_Copy(_Right);
		} catch (...) {
		_Tidy();
		throw;
		}
		}

	~_Tree()
		{	
		_Tidy();
		}

	_Myt& operator=(const _Myt& _Right)
		{	
		if (this != &_Right)
			{	
			erase(begin(), end());
			this->comp = _Right.comp;
			_Copy(_Right);
			}
		return (*this);
		}

	iterator begin()
		{	
		return (iterator(_Lmost(), this));
		}

	const_iterator begin() const
		{	
		return (const_iterator(_Lmost(), this));
		}

	iterator end()
		{	
		return (iterator(_Myhead, this));
		}

	const_iterator end() const
		{	
		return (const_iterator(_Myhead, this));
		}

	iterator _Make_iter(const_iterator _Where) const
		{	
		return (iterator(iterator(_Where._Ptr, this)));
		}

	reverse_iterator rbegin()
		{	
		return (reverse_iterator(end()));
		}

	const_reverse_iterator rbegin() const
		{	
		return (const_reverse_iterator(end()));
		}

	reverse_iterator rend()
		{	
		return (reverse_iterator(begin()));
		}

	const_reverse_iterator rend() const
		{	
		return (const_reverse_iterator(begin()));
		}

	size_type size() const
		{	
		return (_Mysize);
		}

	size_type max_size() const
		{	
		return (this->_Alval.max_size());
		}

	bool empty() const
		{	
		return (size() == 0);
		}

	allocator_type get_allocator() const
		{	
		return (this->_Alval);
		}

	key_compare key_comp() const
		{	
		return (this->comp);
		}

	value_compare value_comp() const
		{	
		return (value_compare(key_comp()));
		}

	_Pairib insert(const value_type& _Val)
		{	
		_Nodeptr _Trynode = _Root();
		_Nodeptr _Wherenode = _Myhead;
		bool _Addleft = true;	
		while (!_Isnil(_Trynode))
			{	
			_Wherenode = _Trynode;
			_Addleft = _Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Trynode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 638);
#line 639 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
			_Trynode = _Addleft ? _Left(_Trynode) : _Right(_Trynode);
			}

		if (this->_Multi)
			return (_Pairib(_Insert(_Addleft, _Wherenode, _Val), true));
		else
			{	
			iterator _Where = iterator(_Wherenode, this);
			if (!_Addleft)
				;	
			else if (_Where == begin())
				return (_Pairib(_Insert(true, _Wherenode, _Val), true));
			else
				--_Where;	

			if (_Debug_lt_pred(this->comp, _Key(_Where._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 655))
#line 656 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				return (_Pairib(_Insert(_Addleft, _Wherenode, _Val), true));
			else
				return (_Pairib(_Where, false));
			}
		}

	iterator insert(const_iterator _Where,
		const value_type& _Val)
		{	

 
		if (_Where._Mycont != this)
			_Debug_message(L"map/set insert iterator outside range", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 668);
 #line 670 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		const_iterator _Next;

		if (size() == 0)
			return (_Insert(true, _Myhead, _Val));	
		else if (this->_Multi)
			{	
			if (_Where == begin())
				{	
				if (!_Debug_lt_pred(this->comp, _Key(_Where._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 680))
#line 681 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (_Where == end())
				{	
				if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Rmost()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 686))
#line 687 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					return (_Insert(false, _Rmost(), _Val));
				}
			else if (!_Debug_lt_pred(this->comp, _Key(_Where._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 690)
#line 691 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				&& !_Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key((--(_Next = _Where))._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 692))
#line 693 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				{	
				if (_Isnil(_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Val));
				else
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (!_Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Where._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 700)
#line 701 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				&& (++(_Next = _Where) == end()
					|| !_Debug_lt_pred(this->comp, _Key(_Next._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 703)))
#line 704 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				{	
				if (_Isnil(_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Val));
				else
					return (_Insert(true, _Next._Mynode(), _Val));
				}
			}
		else
			{	
			if (_Where == begin())
				{	
				if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Where._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 716))
#line 717 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (_Where == end())
				{	
				if (_Debug_lt_pred(this->comp, _Key(_Rmost()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 722))
#line 723 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					return (_Insert(false, _Rmost(), _Val));
				}
			else if (_Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Where._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 726)
#line 727 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				&& _Debug_lt_pred(this->comp, _Key((--(_Next = _Where))._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 728))
#line 729 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				{	
				if (_Isnil(_Right(_Next._Mynode())))
					return (_Insert(false, _Next._Mynode(), _Val));
				else
					return (_Insert(true, _Where._Mynode(), _Val));
				}
			else if (_Debug_lt_pred(this->comp, _Key(_Where._Mynode()), this->_Kfn(_Val), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 736)
#line 737 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				&& (++(_Next = _Where) == end()
					|| _Debug_lt_pred(this->comp, this->_Kfn(_Val), _Key(_Next._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 739)))
#line 740 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
				{	
				if (_Isnil(_Right(_Where._Mynode())))
					return (_Insert(false, _Where._Mynode(), _Val));
				else
					return (_Insert(true, _Next._Mynode(), _Val));
				}
			}

		return (insert(_Val).first);	
		}

	template<class _Iter>
		void insert(_Iter _First, _Iter _Last)
		{	

 
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 756);
 #line 758 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		for (; _First != _Last; ++_First)
			insert(*_First);
		}

	iterator erase(const_iterator _Where)
		{	

 
		if (_Where._Mycont != this || _Isnil(_Where._Mynode()))
			_Debug_message(L"map/set erase iterator outside range", L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 768);
		_Nodeptr _Erasednode = _Where._Mynode();	
		++_Where;	
		_Orphan_ptr(*this, _Erasednode);

 




#line 779 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		_Nodeptr _Fixnode;	
		_Nodeptr _Fixnodeparent;	
		_Nodeptr _Pnode = _Erasednode;

		if (_Isnil(_Left(_Pnode)))
			_Fixnode = _Right(_Pnode);	
		else if (_Isnil(_Right(_Pnode)))
			_Fixnode = _Left(_Pnode);	
		else
			{	
			_Pnode = _Where._Mynode();	
			_Fixnode = _Right(_Pnode);	
			}

		if (_Pnode == _Erasednode)
			{	
			_Fixnodeparent = _Parent(_Erasednode);
			if (!_Isnil(_Fixnode))
				_Parent(_Fixnode) = _Fixnodeparent;	

			if (_Root() == _Erasednode)
				_Root() = _Fixnode;	
			else if (_Left(_Fixnodeparent) == _Erasednode)
				_Left(_Fixnodeparent) = _Fixnode;	
			else
				_Right(_Fixnodeparent) = _Fixnode;	

			if (_Lmost() == _Erasednode)
				_Lmost() = _Isnil(_Fixnode)
					? _Fixnodeparent	
					: _Min(_Fixnode);	

			if (_Rmost() == _Erasednode)
				_Rmost() = _Isnil(_Fixnode)
					? _Fixnodeparent	
					: _Max(_Fixnode);	
			}
		else
			{	
			_Parent(_Left(_Erasednode)) = _Pnode;	
			_Left(_Pnode) = _Left(_Erasednode);	

			if (_Pnode == _Right(_Erasednode))
				_Fixnodeparent = _Pnode;	
			else
				{	
				_Fixnodeparent = _Parent(_Pnode);	
				if (!_Isnil(_Fixnode))
					_Parent(_Fixnode) = _Fixnodeparent;	
				_Left(_Fixnodeparent) = _Fixnode;	
				_Right(_Pnode) = _Right(_Erasednode);	
				_Parent(_Right(_Erasednode)) = _Pnode;	
				}

			if (_Root() == _Erasednode)
				_Root() = _Pnode;	
			else if (_Left(_Parent(_Erasednode)) == _Erasednode)
				_Left(_Parent(_Erasednode)) = _Pnode;	
			else
				_Right(_Parent(_Erasednode)) = _Pnode;	

			_Parent(_Pnode) = _Parent(_Erasednode);	
			std::swap(_Color(_Pnode), _Color(_Erasednode));	
			}

		if (_Color(_Erasednode) == _Black)
			{	
			for (; _Fixnode != _Root() && _Color(_Fixnode) == _Black;
				_Fixnodeparent = _Parent(_Fixnode))
				if (_Fixnode == _Left(_Fixnodeparent))
					{	
					_Pnode = _Right(_Fixnodeparent);
					if (_Color(_Pnode) == _Red)
						{	
						_Color(_Pnode) = _Black;
						_Color(_Fixnodeparent) = _Red;
						_Lrotate(_Fixnodeparent);
						_Pnode = _Right(_Fixnodeparent);
						}

					if (_Isnil(_Pnode))
						_Fixnode = _Fixnodeparent;	
					else if (_Color(_Left(_Pnode)) == _Black
						&& _Color(_Right(_Pnode)) == _Black)
						{	
						_Color(_Pnode) = _Red;
						_Fixnode = _Fixnodeparent;
						}
					else
						{	
						if (_Color(_Right(_Pnode)) == _Black)
							{	
							_Color(_Left(_Pnode)) = _Black;
							_Color(_Pnode) = _Red;
							_Rrotate(_Pnode);
							_Pnode = _Right(_Fixnodeparent);
							}

						_Color(_Pnode) = _Color(_Fixnodeparent);
						_Color(_Fixnodeparent) = _Black;
						_Color(_Right(_Pnode)) = _Black;
						_Lrotate(_Fixnodeparent);
						break;	
						}
					}
				else
					{	
					_Pnode = _Left(_Fixnodeparent);
					if (_Color(_Pnode) == _Red)
						{	
						_Color(_Pnode) = _Black;
						_Color(_Fixnodeparent) = _Red;
						_Rrotate(_Fixnodeparent);
						_Pnode = _Left(_Fixnodeparent);
						}
					if (_Isnil(_Pnode))
						_Fixnode = _Fixnodeparent;	
					else if (_Color(_Right(_Pnode)) == _Black
						&& _Color(_Left(_Pnode)) == _Black)
						{	
						_Color(_Pnode) = _Red;
						_Fixnode = _Fixnodeparent;
						}
					else
						{	
						if (_Color(_Left(_Pnode)) == _Black)
							{	
							_Color(_Right(_Pnode)) = _Black;
							_Color(_Pnode) = _Red;
							_Lrotate(_Pnode);
							_Pnode = _Left(_Fixnodeparent);
							}

						_Color(_Pnode) = _Color(_Fixnodeparent);
						_Color(_Fixnodeparent) = _Black;
						_Color(_Left(_Pnode)) = _Black;
						_Rrotate(_Fixnodeparent);
						break;	
						}
					}

			_Color(_Fixnode) = _Black;	
			}

		this->_Alnod.destroy(_Erasednode);	
		this->_Alnod.deallocate(_Erasednode, 1);

		if (0 < _Mysize)
			--_Mysize;

		return (_Make_iter(_Where));	
		}

	iterator erase(const_iterator _First, const_iterator _Last)
		{	
		if (_First == begin() && _Last == end())
			{	
			clear();
			return (begin());
			}
		else
			{	
			while (_First != _Last)
				erase(_First++);
			return (_Make_iter(_First));
			}
		}

	size_type erase(const key_type& _Keyval)
		{	
		_Pairii _Where = equal_range(_Keyval);
		size_type _Num = 0;
		_Distance(_Where.first, _Where.second, _Num);
		erase(_Where.first, _Where.second);
		return (_Num);
		}

	void erase(const key_type *_First, const key_type *_Last)
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 959);
		while (_First != _Last)
			erase(*_First++);
		}

	void clear()
		{	

 
		this->_Orphan_ptr(*this, 0);
 #line 970 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

		_Erase(_Root());
		_Root() = _Myhead, _Mysize = 0;
		_Lmost() = _Myhead, _Rmost() = _Myhead;
		}

	iterator find(const key_type& _Keyval)
		{	
		iterator _Where = lower_bound(_Keyval);
		return (_Where == end()
			|| _Debug_lt_pred(this->comp, _Keyval, _Key(_Where._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 981)
#line 982 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					? end() : _Where);
		}

	const_iterator find(const key_type& _Keyval) const
		{	
		const_iterator _Where = lower_bound(_Keyval);
		return (_Where == end()
			|| _Debug_lt_pred(this->comp, _Keyval, _Key(_Where._Mynode()), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 990)
#line 991 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
					? end() : _Where);
		}

	size_type count(const key_type& _Keyval) const
		{	
		_Paircc _Ans = equal_range(_Keyval);
		size_type _Num = 0;
		_Distance(_Ans.first, _Ans.second, _Num);
		return (_Num);
		}

	iterator lower_bound(const key_type& _Keyval)
		{	
		return (iterator(_Lbound(_Keyval), this));
		}

	const_iterator lower_bound(const key_type& _Keyval) const
		{	
		return (const_iterator(_Lbound(_Keyval), this));
		}

	iterator upper_bound(const key_type& _Keyval)
		{	
		return (iterator(_Ubound(_Keyval), this));
		}

	const_iterator upper_bound(const key_type& _Keyval) const
		{	
		return (const_iterator(_Ubound(_Keyval), this));
		}

	_Pairii equal_range(const key_type& _Keyval)
		{	
		return (_Eqrange(_Keyval));
		}

	_Paircc equal_range(const key_type& _Keyval) const
		{	
		return (_Eqrange(_Keyval));
		}

	void swap(_Myt& _Right)
		{	
		if (this == &_Right)
			;	
		else if (get_allocator() == _Right.get_allocator())
			{	

 
			this->_Swap_all(_Right);
 #line 1042 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

			this->_Swap_aux(_Right);

			std::swap(this->comp, _Right.comp);
			std::swap(_Myhead, _Right._Myhead);
			std::swap(_Mysize, _Right._Mysize);
			}
		else
			{	
			this->_Swap_aux(_Right);

			_Myt _Tmp = *this;

			*this = _Right;
			_Right = _Tmp;
			}
		}

protected:
	void _Copy(const _Myt& _Right)
		{	
		_Root() = _Copy(_Right._Root(), _Myhead);
		_Mysize = _Right.size();
		if (!_Isnil(_Root()))
			{	
			_Lmost() = _Min(_Root());
			_Rmost() = _Max(_Root());
			}
		else
			_Lmost() = _Myhead, _Rmost() = _Myhead;	
		}

	_Nodeptr _Copy(_Nodeptr _Rootnode, _Nodeptr _Wherenode)
		{	
		_Nodeptr _Newroot = _Myhead;	

		if (!_Isnil(_Rootnode))
			{	
			_Nodeptr _Pnode = _Buynode(_Myhead, _Wherenode, _Myhead,
				_Myval(_Rootnode), _Color(_Rootnode));
			if (_Isnil(_Newroot))
				_Newroot = _Pnode;	

			try {
			_Left(_Pnode) = _Copy(_Left(_Rootnode), _Pnode);
			_Right(_Pnode) = _Copy(_Right(_Rootnode), _Pnode);
			} catch (...) {
			_Erase(_Newroot);	
			throw;
			}
			}

		return (_Newroot);	
		}

	_Paircc _Eqrange(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Lonode = _Myhead;	
		_Nodeptr _Hinode = _Myhead;	

		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Key(_Pnode), _Keyval, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1104))
				_Pnode = _Right(_Pnode);	
			else
				{	
				if (_Isnil(_Hinode)
						&& _Debug_lt_pred(this->comp, _Keyval, _Key(_Pnode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1109))
					_Hinode = _Pnode;	
				_Lonode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}

		_Pnode = _Isnil(_Hinode) ? _Root()
			: _Left(_Hinode);	
		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, _Key(_Pnode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1118))
				{	
				_Hinode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}
			else
				_Pnode = _Right(_Pnode);	

		const_iterator _First = const_iterator(_Lonode, this);
		const_iterator _Last = const_iterator(_Hinode, this);
		return (_Paircc(_First, _Last));
		}

	_Pairii _Eqrange(const key_type& _Keyval)
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Lonode = _Myhead;	
		_Nodeptr _Hinode = _Myhead;	

		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Key(_Pnode), _Keyval, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1138))
				_Pnode = _Right(_Pnode);	
			else
				{	
				if (_Isnil(_Hinode)
						&& _Debug_lt_pred(this->comp, _Keyval, _Key(_Pnode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1143))
					_Hinode = _Pnode;	
				_Lonode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}

		_Pnode = _Isnil(_Hinode) ? _Root()
			: _Left(_Hinode);	
		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, _Key(_Pnode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1152))
				{	
				_Hinode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}
			else
				_Pnode = _Right(_Pnode);	

		iterator _First = iterator(_Lonode, this);
		iterator _Last = iterator(_Hinode, this);
		return (_Pairii(_First, _Last));
		}

	void _Erase(_Nodeptr _Rootnode)
		{	
		for (_Nodeptr _Pnode = _Rootnode; !_Isnil(_Pnode); _Rootnode = _Pnode)
			{	
			_Erase(_Right(_Pnode));
			_Pnode = _Left(_Pnode);
			this->_Alnod.destroy(_Rootnode);	
			this->_Alnod.deallocate(_Rootnode, 1);
			}
		}

	void _Init()
		{	
		_Myhead = _Buynode();
		_Isnil(_Myhead) = true;
		_Root() = _Myhead;
		_Lmost() = _Myhead, _Rmost() = _Myhead;
		_Mysize = 0;
		}

	iterator _Insert(bool _Addleft, _Nodeptr _Wherenode,
		const value_type& _Val)
		{	
		if (max_size() - 1 <= _Mysize)
			throw length_error("map/set<T> too long");
		_Nodeptr _Newnode = _Buynode(_Myhead, _Wherenode, _Myhead,
			_Val, _Red);

		++_Mysize;
		if (_Wherenode == _Myhead)
			{	
			_Root() = _Newnode;
			_Lmost() = _Newnode, _Rmost() = _Newnode;
			}
		else if (_Addleft)
			{	
			_Left(_Wherenode) = _Newnode;
			if (_Wherenode == _Lmost())
				_Lmost() = _Newnode;
			}
		else
			{	
			_Right(_Wherenode) = _Newnode;
			if (_Wherenode == _Rmost())
				_Rmost() = _Newnode;
			}

		for (_Nodeptr _Pnode = _Newnode; _Color(_Parent(_Pnode)) == _Red; )
			if (_Parent(_Pnode) == _Left(_Parent(_Parent(_Pnode))))
				{	
				_Wherenode = _Right(_Parent(_Parent(_Pnode)));
				if (_Color(_Wherenode) == _Red)
					{	
					_Color(_Parent(_Pnode)) = _Black;
					_Color(_Wherenode) = _Black;
					_Color(_Parent(_Parent(_Pnode))) = _Red;
					_Pnode = _Parent(_Parent(_Pnode));
					}
				else
					{	
					if (_Pnode == _Right(_Parent(_Pnode)))
						{	
						_Pnode = _Parent(_Pnode);
						_Lrotate(_Pnode);
						}
					_Color(_Parent(_Pnode)) = _Black;	
					_Color(_Parent(_Parent(_Pnode))) = _Red;
					_Rrotate(_Parent(_Parent(_Pnode)));
					}
				}
			else
				{	
				_Wherenode = _Left(_Parent(_Parent(_Pnode)));
				if (_Color(_Wherenode) == _Red)
					{	
					_Color(_Parent(_Pnode)) = _Black;
					_Color(_Wherenode) = _Black;
					_Color(_Parent(_Parent(_Pnode))) = _Red;
					_Pnode = _Parent(_Parent(_Pnode));
					}
				else
					{	
					if (_Pnode == _Left(_Parent(_Pnode)))
						{	
						_Pnode = _Parent(_Pnode);
						_Rrotate(_Pnode);
						}
					_Color(_Parent(_Pnode)) = _Black;	
					_Color(_Parent(_Parent(_Pnode))) = _Red;
					_Lrotate(_Parent(_Parent(_Pnode)));
					}
				}

		_Color(_Root()) = _Black;	
		return (iterator(_Newnode, this));
		}

	_Nodeptr _Lbound(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = _Myhead;	

		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Key(_Pnode), _Keyval, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1268))
				_Pnode = _Right(_Pnode);	
			else
				{	
				_Wherenode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}

		return (_Wherenode);	
		}

	_Nodeptr& _Lmost() const
		{	
		return (_Left(_Myhead));
		}

	void _Lrotate(_Nodeptr _Wherenode)
		{	
		_Nodeptr _Pnode = _Right(_Wherenode);
		_Right(_Wherenode) = _Left(_Pnode);

		if (!_Isnil(_Left(_Pnode)))
			_Parent(_Left(_Pnode)) = _Wherenode;
		_Parent(_Pnode) = _Parent(_Wherenode);

		if (_Wherenode == _Root())
			_Root() = _Pnode;
		else if (_Wherenode == _Left(_Parent(_Wherenode)))
			_Left(_Parent(_Wherenode)) = _Pnode;
		else
			_Right(_Parent(_Wherenode)) = _Pnode;

		_Left(_Pnode) = _Wherenode;
		_Parent(_Wherenode) = _Pnode;
		}

	static _Nodeptr _Max(_Nodeptr _Pnode)
		{	
		while (!_Isnil(_Right(_Pnode)))
			_Pnode = _Right(_Pnode);
		return (_Pnode);
		}

	static _Nodeptr _Min(_Nodeptr _Pnode)
		{	
		while (!_Isnil(_Left(_Pnode)))
			_Pnode = _Left(_Pnode);
		return (_Pnode);
		}

	_Nodeptr& _Rmost() const
		{	
		return (_Right(_Myhead));
		}

	_Nodeptr& _Root() const
		{	
		return (_Parent(_Myhead));
		}

	void _Rrotate(_Nodeptr _Wherenode)
		{	
		_Nodeptr _Pnode = _Left(_Wherenode);
		_Left(_Wherenode) = _Right(_Pnode);

		if (!_Isnil(_Right(_Pnode)))
			_Parent(_Right(_Pnode)) = _Wherenode;
		_Parent(_Pnode) = _Parent(_Wherenode);

		if (_Wherenode == _Root())
			_Root() = _Pnode;
		else if (_Wherenode == _Right(_Parent(_Wherenode)))
			_Right(_Parent(_Wherenode)) = _Pnode;
		else
			_Left(_Parent(_Wherenode)) = _Pnode;

		_Right(_Pnode) = _Wherenode;
		_Parent(_Wherenode) = _Pnode;
		}

	_Nodeptr _Ubound(const key_type& _Keyval) const
		{	
		_Nodeptr _Pnode = _Root();
		_Nodeptr _Wherenode = _Myhead;	

		while (!_Isnil(_Pnode))
			if (_Debug_lt_pred(this->comp, _Keyval, _Key(_Pnode), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree", 1354))
				{	
				_Wherenode = _Pnode;
				_Pnode = _Left(_Pnode);	
				}
			else
				_Pnode = _Right(_Pnode);	

		return (_Wherenode);	
		}

 
	void _Orphan_ptr(_Myt& _Cont, _Nodeptr _Ptr) const
		{	
		_Lockit _Lock(3);
		const_iterator **_Pnext = (const_iterator **)&_Cont._Myfirstiter;
		while (*_Pnext != 0)
			if ((*_Pnext)->_Ptr == _Myhead
				|| _Ptr != 0 && (*_Pnext)->_Ptr != _Ptr)
				_Pnext = (const_iterator **)&(*_Pnext)->_Mynextiter;
			else
				{	
				(*_Pnext)->_Mycont = 0;
				*_Pnext = (const_iterator *)(*_Pnext)->_Mynextiter;
				}
		}
 #line 1381 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

	_Nodeptr _Buynode()
		{	
		_Nodeptr _Wherenode = this->_Alnod.allocate(1);
		int _Linkcnt = 0;

		try {
		this->_Alptr.construct(&_Left(_Wherenode), 0);
		++_Linkcnt;
		this->_Alptr.construct(&_Parent(_Wherenode), 0);
		++_Linkcnt;
		this->_Alptr.construct(&_Right(_Wherenode), 0);
		} catch (...) {
		if (1 < _Linkcnt)
			this->_Alptr.destroy(&_Parent(_Wherenode));
		if (0 < _Linkcnt)
			this->_Alptr.destroy(&_Left(_Wherenode));
		this->_Alnod.deallocate(_Wherenode, 1);
		throw;
		}
		_Color(_Wherenode) = _Black;
		_Isnil(_Wherenode) = false;
		return (_Wherenode);
		}

	_Nodeptr _Buynode(_Nodeptr _Larg, _Nodeptr _Parg,
		_Nodeptr _Rarg, const value_type& _Val, char _Carg)
		{	
		_Nodeptr _Wherenode = this->_Alnod.allocate(1);
		try {
		new (_Wherenode) _Node(_Larg, _Parg, _Rarg, _Val, _Carg);
		} catch (...) {
		this->_Alnod.deallocate(_Wherenode, 1);
		throw;
		}
		return (_Wherenode);
		}

	void _Tidy()
		{	
		erase(begin(), end());
		this->_Alptr.destroy(&_Left(_Myhead));
		this->_Alptr.destroy(&_Parent(_Myhead));
		this->_Alptr.destroy(&_Right(_Myhead));
		this->_Alnod.deallocate(_Myhead, 1);
		_Myhead = 0, _Mysize = 0;
		}

	static void _Xran()
		{	
		throw out_of_range("invalid map/set<T> iterator");
		}

	static void _Xinvarg()
		{	
		throw invalid_argument("invalid map/set<T> argument");
		}

	_Nodeptr _Myhead;	
	size_type _Mysize;	
	};

	
template <class _Traits>
	class _Move_operation_category<_Tree<_Traits> >
	{
	public:
		typedef _Swap_move_tag _Move_cat;
	};

		
template<class _Traits> inline
	bool operator==(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (_Left.size() == _Right.size()
		&& equal(_Left.begin(), _Left.end(), _Right.begin()));
	}

template<class _Traits> inline
	bool operator!=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Left == _Right));
	}

template<class _Traits> inline
	bool operator<(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (lexicographical_compare(_Left.begin(), _Left.end(),
		_Right.begin(), _Right.end()));
	}

template<class _Traits> inline
	bool operator>(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (_Right < _Left);
	}

template<class _Traits> inline
	bool operator<=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Right < _Left));
	}

template<class _Traits> inline
	bool operator>=(const _Tree<_Traits>& _Left, const _Tree<_Traits>& _Right)
	{	
	return (!(_Left < _Right));
	}
}


 #pragma warning(default:4127)
 #pragma warning(pop)
 #pragma pack(pop)
#line 1496 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"

#line 1498 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"
#line 1499 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xtree"























#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"


 #pragma pack(push,8)
 #pragma warning(push,3)
#line 12 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"
namespace std {

		
template<class _Kty,	
	class _Pr,	
	class _Alloc,	
	bool _Mfl>	
	class _Tset_traits
		: public _Container_base_aux_alloc_empty<_Alloc>
	{	
public:
	typedef _Kty key_type;
	typedef _Kty value_type;
	typedef _Pr key_compare;
	typedef typename _Alloc::template rebind<value_type>::other
		allocator_type;

	typedef typename allocator_type::const_pointer _ITptr;
	typedef typename allocator_type::const_reference _IReft;

	enum
		{	
		_Multi = _Mfl};

	_Tset_traits(_Pr _Parg, _Alloc _Al)
		: _Container_base_aux_alloc_empty<_Alloc>(_Al), comp(_Parg)
		{	
		}

	typedef key_compare value_compare;

	static const _Kty& _Kfn(const value_type& _Val)
		{	
		return (_Val);
		}

	_Pr comp;	
	};

		
template<class _Kty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<_Kty> >
	class set
		: public _Tree<_Tset_traits<_Kty, _Pr, _Alloc, false> >
	{	
public:
	typedef set<_Kty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tset_traits<_Kty, _Pr, _Alloc, false> > _Mybase;
	typedef _Kty key_type;
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	set()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	explicit set(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}

	set(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 97);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 107);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

	template<class _Iter>
		set(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 117);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

 














#line 138 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"



	};

	
template<class _Kty, class _Pr, class _Alloc>
	class _Move_operation_category<set<_Kty, _Pr, _Alloc> >
	{
	public:
		typedef _Swap_move_tag _Move_cat;
	};

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(set<_Kty, _Pr, _Alloc>& _Left,
		set<_Kty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

		
template<class _Kty,
	class _Pr = less<_Kty>,
	class _Alloc = allocator<_Kty> >
	class multiset
		: public _Tree<_Tset_traits<_Kty, _Pr, _Alloc, true> >
	{	
public:
	typedef multiset<_Kty, _Pr, _Alloc> _Myt;
	typedef _Tree<_Tset_traits<_Kty, _Pr, _Alloc, true> > _Mybase;
	typedef _Kty key_type;
	typedef _Pr key_compare;
	typedef typename _Mybase::value_compare value_compare;
	typedef typename _Mybase::allocator_type allocator_type;
	typedef typename _Mybase::size_type size_type;
	typedef typename _Mybase::difference_type difference_type;
	typedef typename _Mybase::pointer pointer;
	typedef typename _Mybase::const_pointer const_pointer;
	typedef typename _Mybase::reference reference;
	typedef typename _Mybase::const_reference const_reference;
	typedef typename _Mybase::iterator iterator;
	typedef typename _Mybase::const_iterator const_iterator;
	typedef typename _Mybase::reverse_iterator reverse_iterator;
	typedef typename _Mybase::const_reverse_iterator
		const_reverse_iterator;
	typedef typename _Mybase::value_type value_type;

	multiset()
		: _Mybase(key_compare(), allocator_type())
		{	
		}

	explicit multiset(const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		}

	multiset(const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last)
		: _Mybase(key_compare(), allocator_type())
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 206);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last,
			const key_compare& _Pred)
		: _Mybase(_Pred, allocator_type())
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 216);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

	template<class _Iter>
		multiset(_Iter _First, _Iter _Last,
			const key_compare& _Pred, const allocator_type& _Al)
		: _Mybase(_Pred, _Al)
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 226);
		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}

 














#line 247 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"

	iterator insert(const value_type& _Val)
		{	
		return (_Mybase::insert(_Val).first);
		}

	iterator insert(const_iterator _Where, const value_type& _Val)
		{	
		return (_Mybase::insert(_Where, _Val));
		}

	template<class _Iter>
		void insert(_Iter _First, _Iter _Last)
		{	

 
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set", 263);
 #line 265 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"

		for (; _First != _Last; ++_First)
			this->insert(*_First);
		}
	};

	
template<class _Kty, class _Pr, class _Alloc>
	class _Move_operation_category<multiset<_Kty, _Pr, _Alloc> >
	{
	public:
		typedef _Swap_move_tag _Move_cat;
	};

template<class _Kty,
	class _Pr,
	class _Alloc> inline
	void swap(multiset<_Kty, _Pr, _Alloc>& _Left,
		multiset<_Kty, _Pr, _Alloc>& _Right)
	{	
	_Left.swap(_Right);
	}

 


#line 292 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"

}

 #pragma warning(pop)
 #pragma pack(pop)
#line 298 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"

#line 300 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"
#line 301 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\set"





#line 14 "h:\\myproject\\myutility\\windowsexercises\\pipe\\stdafx.h"

#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\iostream"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\istream"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ostream"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ios"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocnum"

#pragma once






#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\streambuf"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xiosbase"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

#pragma once






#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"















#pragma once
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"







#pragma pack(push,8)
#line 27 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"

 



 

#line 35 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"

struct __type_info_node {
    void *memPtr;
    __type_info_node* next;
};

extern __type_info_node __type_info_root_node;

class type_info {
public:
    virtual ~type_info();
    __declspec(dllimport) bool  operator==(const type_info& rhs) const;
    __declspec(dllimport) bool  operator!=(const type_info& rhs) const;
    __declspec(dllimport) int  before(const type_info& rhs) const;
    __declspec(dllimport) const char*  name(__type_info_node* __ptype_info_node = &__type_info_root_node) const;
    __declspec(dllimport) const char*  raw_name() const;
private:
    void *_m_data;
    char _m_d_name[1];
     type_info(const type_info& rhs);
    type_info&  operator=(const type_info& rhs);
    __declspec(dllimport) static const char *__cdecl _Name_base(const type_info *,__type_info_node* __ptype_info_node);
    __declspec(dllimport) static void __cdecl _Type_info_dtor(type_info *);
};

 

 namespace std {

using ::type_info;

 }





 namespace std {

class __declspec(dllimport) bad_cast : public exception {
public:










     bad_cast(const char * _Message = "bad cast");
     bad_cast(const bad_cast &);
    virtual  ~bad_cast();
#line 90 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"
};

class __declspec(dllimport) bad_typeid : public exception {
public:










     bad_typeid(const char * _Message = "bad typeid");
     bad_typeid(const bad_typeid &);
    virtual  ~bad_typeid();
#line 108 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"

};

class __declspec(dllimport) __non_rtti_object : public bad_typeid {
public:










     __non_rtti_object(const char * _Message);
     __non_rtti_object(const __non_rtti_object &);
    virtual  ~__non_rtti_object();
#line 127 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"
};

 }
 

 
























































#line 190 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"

#line 192 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"


#pragma pack(pop)
#line 196 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"

#line 198 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\typeinfo"







#line 10 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"

#pragma once






 #pragma pack(push,8)
 #pragma warning(push,3)
#line 12 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"

namespace std {
struct _DebugHeapTag_t
	{	
	int _Type;
	};
}

		

 
   
   
   
   

  
  
  

[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] __declspec(dllimport) void * __cdecl operator new(size_t _Size,
	const std::_DebugHeapTag_t&, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *, int)
		throw (...);	

[returnvalue:SA_Post(Null=SA_No,WritableBytes="_Size")] __declspec(dllimport) void * __cdecl operator new[](size_t _Size,
	const std::_DebugHeapTag_t&, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *, int)
		throw (...);	

__declspec(dllimport) void __cdecl operator delete(void *,
	const std::_DebugHeapTag_t&, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *, int)
		throw ();	

__declspec(dllimport) void __cdecl operator delete[](void *,
	const std::_DebugHeapTag_t&, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *, int)
		throw ();	

namespace std {

__declspec(dllimport) const _DebugHeapTag_t& __cdecl _DebugHeapTag_func();

		
template<class _Ty>
	void __cdecl _DebugHeapDelete(_Ty *_Ptr)
	{	
	if (_Ptr != 0)
		{	
		_Ptr->~_Ty();
		
		
		free(_Ptr);
		}
	}

		
template<class _Ty>
	class _DebugHeapAllocator
	: public allocator<_Ty>
	{	
public:

	template<class _Other>
		struct rebind
		{	
		typedef typename _DebugHeapAllocator<_Other> other;
		};

	typename allocator<_Ty>::pointer __cdecl allocate(typename allocator<_Ty>::size_type _Count, const void *)
		{	
		if (_Count <= 0)
			_Count = 0;
		else if (((size_t)(-1) / _Count) < sizeof(_Ty))
			throw std::bad_alloc(0);

			
		return ((_Ty *)new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug", 86) char[_Count * sizeof(_Ty)]);
		}

	typename allocator<_Ty>::pointer  allocate(typename allocator<_Ty>::size_type _Count)
		{	
		if (_Count <= 0)
			_Count = 0;
		else if (((size_t)(-1) / _Count) < sizeof(_Ty))
			throw std::bad_alloc(0);

			
		return ((_Ty *)new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug", 97) char[_Count * sizeof(_Ty)]);
		}

	void  deallocate(typename allocator<_Ty>::pointer _Ptr, typename allocator<_Ty>::size_type)
		{	
		std::_DebugHeapDelete((void *)_Ptr);
		}
	};

template class __declspec(dllimport) _DebugHeapAllocator<char>;

		
class __declspec(dllimport) _DebugHeapString
	: public basic_string<char, char_traits<char>, _DebugHeapAllocator<char> >
	{	
public:
	typedef _DebugHeapString _Myt;
	typedef basic_string<char, char_traits<char>, _DebugHeapAllocator<char> >
		_Mybase;
	typedef char _Elem;

	 _DebugHeapString()
		: _Mybase()
		{	
		}

	 _DebugHeapString(const _Myt& _Right)
		: _Mybase(_Right)
		{	
		}

	 _DebugHeapString(const _Elem *_Ptr)
		: _Mybase(_Ptr)
		{	
		}

	 _DebugHeapString(const string &_Str)
		: _Mybase(_Str.c_str())
		{	
		}

	 operator string() const
		{	
		return (string(c_str()));
		}
	};
}

  




#line 151 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"



 #pragma warning(pop)
 #pragma pack(pop)
#line 157 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"


#line 160 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"
#line 161 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xdebug"





#line 11 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"

#pragma once



#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"

#pragma once


#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"














#pragma once
#line 17 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"


extern "C" {
#line 26 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"











































#line 70 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"










                                













[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isctype([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Type);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isctype_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Type, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl isalpha([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isalpha_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl isupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl islower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _islower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl isdigit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isdigit_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl isxdigit([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isxdigit_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl isspace([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isspace_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl ispunct([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _ispunct_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl isalnum([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isalnum_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl isprint([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isprint_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl isgraph([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _isgraph_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl iscntrl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _iscntrl_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl toupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl tolower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl _tolower([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _tolower_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)]  __declspec(dllimport) int __cdecl _toupper([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl _toupper_l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __isascii([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __toascii([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __iscsymf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) int __cdecl __iscsym([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _C);

#line 130 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"















































































__declspec(dllimport) int __cdecl _chvalidator([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mask);



#line 214 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"












































#line 259 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"


__declspec(dllimport) int __cdecl _chvalidator_l([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Ch, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Mask);



#line 266 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"





























































































#line 360 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"
















#line 377 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"

#line 379 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"


}
#line 383 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"

#line 385 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\ctype.h"
#line 6 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"
#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"














#pragma once
#line 17 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"




#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\crtdefs.h"














 


















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 22 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"






#pragma pack(push,8)
#line 30 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"


extern "C" {
#line 34 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"

























struct lconv {
        char *decimal_point;
        char *thousands_sep;
        char *grouping;
        char *int_curr_symbol;
        char *currency_symbol;
        char *mon_decimal_point;
        char *mon_thousands_sep;
        char *mon_grouping;
        char *positive_sign;
        char *negative_sign;
        char int_frac_digits;
        char frac_digits;
        char p_cs_precedes;
        char p_sep_by_space;
        char n_cs_precedes;
        char n_sep_by_space;
        char p_sign_posn;
        char n_sign_posn;
        };

#line 81 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"




















#line 102 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"

 __declspec(dllimport) int __cdecl _configthreadlocale([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Flag);
 __declspec(dllimport) char * __cdecl setlocale([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Category, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Locale);
 __declspec(dllimport) struct lconv * __cdecl localeconv(void);
 __declspec(dllimport) _locale_t __cdecl _get_current_locale(void);
 __declspec(dllimport) _locale_t __cdecl _create_locale([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Category, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Locale);
__declspec(dllimport) void __cdecl _free_locale([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_get_current_locale" " instead. See online help for details.")) __declspec(dllimport) _locale_t __cdecl __get_current_locale(void);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_create_locale" " instead. See online help for details.")) __declspec(dllimport) _locale_t __cdecl __create_locale([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Category, [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char * _Locale);
__declspec(deprecated("This function or variable has been superceded by newer library or operating system functionality. Consider using " "_free_locale" " instead. See online help for details.")) __declspec(dllimport) void __cdecl __free_locale([SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);











}
#line 127 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"


#pragma pack(pop)
#line 131 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"

#line 133 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\locale.h"
#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"






#pragma pack(push,8)
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"



extern "C" {
#line 20 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"

		











		



















typedef struct _Collvec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	} _Collvec;

typedef struct _Ctypevec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	const short *_Table;
	int _Delfl;
	} _Ctypevec;

typedef struct _Cvtvec
	{	
	unsigned long _Hand;	
	unsigned int _Page;		
	} _Cvtvec;

		
__declspec(dllimport) _Collvec __cdecl _Getcoll();
__declspec(dllimport) _Ctypevec __cdecl _Getctype();
__declspec(dllimport) _Cvtvec __cdecl _Getcvt();

__declspec(dllimport) int __cdecl _Getdateorder();

__declspec(dllimport) int __cdecl _Mbrtowc([SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] wchar_t *, const char *, size_t,
	mbstate_t *, const _Cvtvec *);
__declspec(dllimport) float __cdecl _Stof(const char *, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] char **, long);
__declspec(dllimport) double __cdecl _Stod(const char *, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] char **, long);
__declspec(dllimport) long double __cdecl _Stold(const char *, [SA_Pre(Null=SA_Maybe,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(Deref=1,Null=SA_Maybe)] [SA_Post(Deref=2,Valid=SA_Yes)] char **, 
  long);
__declspec(dllimport) int __cdecl _Strcoll(const char *, const char *,
	const char *, const char *, const _Collvec *);
__declspec(dllimport) size_t __cdecl _Strxfrm(
  [SA_Pre(Null=SA_No,WritableElements="\n@""_End1-_String1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="return")] [SA_Post(Deref=1,Valid=SA_Yes)] char * _String1, 
  [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char * _End1, const char *, const char *, const _Collvec *);
__declspec(dllimport) int __cdecl _Tolower(int, const _Ctypevec *);
__declspec(dllimport) int __cdecl _Toupper(int, const _Ctypevec *);
__declspec(dllimport) int __cdecl _Wcrtomb([SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] char *, wchar_t, mbstate_t *,
	const _Cvtvec *);
__declspec(dllimport) int __cdecl _Wcscoll(const wchar_t *, const wchar_t *,
	const wchar_t *, const wchar_t *, const _Collvec *);
__declspec(dllimport) size_t __cdecl _Wcsxfrm(
  [SA_Pre(Null=SA_No,WritableElements="\n@""_End1-_String1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="return")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_String1, 
  [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_End1, const wchar_t *, const wchar_t *, const _Collvec *);

__declspec(dllimport) short __cdecl _Getwctype(wchar_t, const _Ctypevec *);
__declspec(dllimport) const wchar_t * __cdecl _Getwctypes(const wchar_t *, const wchar_t *,
	short*, const _Ctypevec*);
__declspec(dllimport) wchar_t __cdecl _Towlower(wchar_t, const _Ctypevec *);
__declspec(dllimport) wchar_t __cdecl _Towupper(wchar_t, const _Ctypevec *);

}
#line 109 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"


extern "C" {
__declspec(dllimport) void *__cdecl _Gettnames();
__declspec(dllimport) char *__cdecl _Getdays();
__declspec(dllimport) char *__cdecl _Getmonths();
__declspec(dllimport) size_t __cdecl _Strftime(
  [SA_Pre(Null=SA_No,WritableElements="_Maxsize")] [SA_Pre(Deref=1,Valid=SA_No)] char *, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] size_t _Maxsize, 
  [SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)]  const char *, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] const struct tm *, void *);
}

extern "C" {
_locale_t __cdecl _GetLocaleForCP(unsigned int);
}


#pragma pack(pop)
#line 127 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"

#line 129 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo.h"





#line 7 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"




 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable:4412)
#line 15 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"

namespace std {

		
class __declspec(dllimport) _Timevec
	{	
public:
	 _Timevec(void *_Ptr = 0)
		: _Timeptr(_Ptr)
		{	
		}

	 _Timevec(const _Timevec& _Right)
		{	
		*this = _Right;
		}

	 ~_Timevec()
		{	
		free(_Timeptr);
		}

	_Timevec&  operator=(const _Timevec& _Right)
		{	
		_Timeptr = _Right._Timeptr;
		((_Timevec *)&_Right)->_Timeptr = 0;
		return (*this);
		}

	void * _Getptr() const
		{	
		return (_Timeptr);
		}

private:
	void *_Timeptr;	
	};

		


#pragma warning(push)
#pragma warning(disable:4412)
class __declspec(dllimport) _Locinfo
	{	
public:
	typedef ::_Collvec _Collvec;
	typedef ::_Ctypevec _Ctypevec;
	typedef ::_Cvtvec _Cvtvec;
	typedef std::_Timevec _Timevec;

    static  void __cdecl _Locinfo_ctor(_Locinfo *, const char *);
	static  void __cdecl _Locinfo_ctor(_Locinfo *, const string&);
	static  void __cdecl _Locinfo_ctor(_Locinfo *, int, const char *);
    static  void __cdecl _Locinfo_dtor(_Locinfo *);
    static  _Locinfo& __cdecl _Locinfo_Addcats(_Locinfo *, int, const char *);

	 _Locinfo(const char *_Pch = "C")

        : _Lock(0)
#line 76 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"
        {
        if (_Pch == 0)
            throw runtime_error("bad locale name");
        _Locinfo_ctor(this, _Pch);
        }

	 _Locinfo(int _I, const char *_Pch)

        : _Lock(0)
#line 86 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"
        {
        if (_Pch == 0)
            throw runtime_error("bad locale name");
        _Locinfo_ctor(this, _I, _Pch);
        }

	 _Locinfo(const string& locstr)

        : _Lock(0)
#line 96 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"
		{
        _Locinfo_ctor(this, locstr);
		}

	 ~_Locinfo()
        {
        _Locinfo_dtor(this);
        }

	_Locinfo&  _Addcats(int _I, const char *_Pch)
		{
		if (_Pch == 0)
			throw runtime_error("bad locale name");
		return _Locinfo_Addcats(this, _I, _Pch);
		}

	string  _Getname() const
		{	
		return (_Newlocname);
		}

	_Collvec  _Getcoll() const
		{	
		return (::_Getcoll());
		}

	_Ctypevec  _Getctype() const
		{	
		return (::_Getctype());
		}

	_Cvtvec  _Getcvt() const
		{	
		return (::_Getcvt());
		}

	const lconv * _Getlconv() const
		{	
		return (localeconv());
		}

	_Timevec  _Gettnames() const
		{	
		return (_Timevec(::_Gettnames()));
		}

	const char * _Getdays() const
		{	
		const char *_Ptr = ::_Getdays();
		if (_Ptr != 0)
			{	
			((_Locinfo *)this)->_Days = _Ptr;
			free((void *)_Ptr);
			}
		return (_Days.size() != 0 ? _Days.c_str()
			: ":Sun:Sunday:Mon:Monday:Tue:Tuesday:Wed:Wednesday"
				":Thu:Thursday:Fri:Friday:Sat:Saturday");
		}

	const char * _Getmonths() const
		{	
		const char *_Ptr = ::_Getmonths();
		if (_Ptr != 0)
			{	
			((_Locinfo *)this)->_Months = _Ptr;
			free((void *)_Ptr);
			}
		return (_Months.size() != 0 ? _Months.c_str()
			: ":Jan:January:Feb:February:Mar:March"
				":Apr:April:May:May:Jun:June"
				":Jul:July:Aug:August:Sep:September"
				":Oct:October:Nov:November:Dec:December");
		}

	const char * _Getfalse() const
		{	
		return ("false");
		}

	const char * _Gettrue() const
		{	
		return ("true");
		}

	int  _Getdateorder() const
		{	
		return ::_Getdateorder();
		}

private:





	_Lockit _Lock;	
#line 193 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"
	string _Days;	
	string _Months;	
	string _Oldlocname;	
	string _Newlocname;	
	};
#pragma warning(pop)

		
template<class _Elem> inline
	int __cdecl _LStrcoll(const _Elem *_First1, const _Elem *_Last1,
		const _Elem *_First2, const _Elem *_Last2,
			const _Locinfo::_Collvec *)
	{	
	for (; _First1 != _Last1 && _First2 != _Last2; ++_First1, ++_First2)
		if (*_First1 < *_First2)
			return (-1);	
		else if (*_First2 < *_First1)
			return (+1);	
	return (_First2 != _Last2 ? -1 : _First1 != _Last1 ? +1 : 0);
	}

template<> inline
	int __cdecl _LStrcoll(const char *_First1, const char *_Last1,
		const char *_First2, const char *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Strcoll(_First1, _Last1, _First2, _Last2, _Vector));
	}

template<> inline
	int __cdecl _LStrcoll(const wchar_t *_First1, const wchar_t *_Last1,
		const wchar_t *_First2, const wchar_t *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Wcscoll(_First1, _Last1, _First2, _Last2, _Vector));
	}

		
template<class _Elem> inline
	size_t __cdecl _LStrxfrm(_Elem *_First1, _Elem *_Last1,
		const _Elem *_First2, const _Elem *_Last2,
			const _Locinfo::_Collvec *)
	{	
	size_t _Count = _Last2 - _First2;
	if (_Count <= (size_t)(_Last1 - _First1))
		::memcpy_s((_First1), ((_Last1 - _First1)* sizeof(_Elem)), (_First2), (_Count * sizeof (_Elem)));
	return (_Count);
	}

template<> inline
	size_t __cdecl _LStrxfrm(
		[SA_Pre(Null=SA_No,WritableElements="\n@""_Last1-_First1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="return")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_First1, 
		[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_Last1,
		const char *_First2, const char *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Strxfrm(_First1, _Last1, _First2, _Last2, _Vector));
	}

template<> inline
	size_t __cdecl _LStrxfrm(
		[SA_Pre(Null=SA_No,WritableElements="\n@""_Last1-_First1")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="return")] [SA_Post(Deref=1,Valid=SA_Yes)] wchar_t *_First1, 
		[SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *_Last1,
		const wchar_t *_First2, const wchar_t *_Last2,
			const _Locinfo::_Collvec *_Vector)
	{	
	return (_Wcsxfrm(_First1, _Last1, _First2, _Last2, _Vector));
	}
}

 #pragma warning(pop)
 #pragma pack(pop)
#line 266 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"

#line 268 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"
#line 269 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocinfo"





#line 12 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"


 #pragma pack(push,8)
 #pragma warning(push,3)
 #pragma warning(disable:4412)
#line 18 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

namespace std {

		
template<class _Dummy>
	class _Locbase
	{	
public:
	 static const int collate = ((1 << (1)) >> 1);
	 static const int ctype = ((1 << (2)) >> 1);
	 static const int monetary = ((1 << (3)) >> 1);
	 static const int numeric = ((1 << (4)) >> 1);
	 static const int time = ((1 << (5)) >> 1);
	 static const int messages = ((1 << (6)) >> 1);
	 static const int all = (((1 << (7)) >> 1) - 1);
	 static const int none = 0;
	};

template<class _Dummy>
	const int _Locbase<_Dummy>::collate;
template<class _Dummy>
	const int _Locbase<_Dummy>::ctype;
template<class _Dummy>
	const int _Locbase<_Dummy>::monetary;
template<class _Dummy>
	const int _Locbase<_Dummy>::numeric;
template<class _Dummy>
	const int _Locbase<_Dummy>::time;
template<class _Dummy>
	const int _Locbase<_Dummy>::messages;
template<class _Dummy>
	const int _Locbase<_Dummy>::all;
template<class _Dummy>
	const int _Locbase<_Dummy>::none;

		
class locale;
template<class _Facet>
	const _Facet& __cdecl use_facet(const locale&);


#pragma warning(push)
#pragma warning(disable:4412)
class __declspec(dllimport) locale
	: public _Locbase<int>
	{	
public:
	typedef int category;

			
	class __declspec(dllimport) id
		{	
	public:
		 id(size_t _Val = 0)
			: _Id(_Val)
			{	
			}

		 operator size_t()
			{	
			if (_Id == 0)
				{	
				{ ::std:: _Lockit _Lock(0);
					if (_Id == 0)
						_Id = ++_Id_cnt;
				}
				}
			return (_Id);
			}

	private:
		 id(const id&);	
		id&  operator=(const id&);	

		size_t _Id;	
		static  int& __cdecl _Id_cnt_func();



		 static int _Id_cnt;	
#line 99 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
		};

	class _Locimp;

			
	class facet
		{	
		friend class locale;
		friend class _Locimp;

	public:
		__declspec(dllimport) static size_t __cdecl _Getcat(const facet ** = 0,
			const locale * = 0)
			{	
			return ((size_t)(-1));
			}

		__declspec(dllimport) void  _Incref()
			{	
			{ ::std:: _Lockit _Lock(0);
				if (_Refs < (size_t)(-1))
					++_Refs;
			}
			}

		__declspec(dllimport) facet * _Decref()
			{	
			{ ::std:: _Lockit _Lock(0);
				if (0 < _Refs && _Refs < (size_t)(-1))
					--_Refs;
				return (_Refs == 0 ? this : 0);
			}
			}

		void  _Register()
			{


#line 138 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
			facet_Register(this);
#line 140 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
			}

  
		__declspec(dllimport) void * __cdecl operator new(size_t _Size)
			{	
			return (operator new(_Size, std::_DebugHeapTag_func(),
				"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 146));
			}

		__declspec(dllimport) void * __cdecl operator new(size_t _Size,
			const std::_DebugHeapTag_t& _Tag, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *_File, int _Line)
			{	
			return (::operator new(_Size, _Tag, _File, _Line));
			}

		__declspec(dllimport) void __cdecl operator delete(void *_Ptr,
			const std::_DebugHeapTag_t&, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] char *, int)
			{	
			operator delete(_Ptr);
			}

		__declspec(dllimport) void __cdecl operator delete(void *_Ptr)
			{	
			std::_DebugHeapDelete((facet*)_Ptr);
			}
 #line 166 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"



		__declspec(dllimport) virtual  ~facet()
			{	
			}

	protected:
		__declspec(dllimport) explicit  facet(size_t _Initrefs = 0)
			: _Refs(_Initrefs)
			{	
			}

	private:


#line 183 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
		static void __cdecl facet_Register(facet *);	
#line 185 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

		 facet(const facet&);	
		facet&  operator=(const facet&);	

		size_t _Refs;	
		};

#pragma warning(push)
#pragma warning(disable:4275)
			
	class __declspec(dllimport) _Locimp
		: public facet
		{	
	protected:
		 ~_Locimp()
			{
			_Locimp_dtor(this);
			}

	private:
		static  void __cdecl _Locimp_dtor(_Locimp *); 
		static void _Locimp_ctor(_Locimp *,const _Locimp&);	
		static  void __cdecl _Locimp_Addfac(_Locimp *,facet *, size_t);	
		friend class locale;

		 _Locimp(bool _Transparent = false)
			: locale::facet(1), _Facetvec(0), _Facetcount(0),
				_Catmask(none), _Xparent(_Transparent), _Name("*")
			{ }
		
		 _Locimp(const _Locimp& _Right)
			: locale::facet(1), _Facetvec(0), _Facetcount(_Right._Facetcount),
				_Catmask(_Right._Catmask), _Xparent(_Right._Xparent), _Name(_Right._Name)
			{
			_Locimp_ctor(this, _Right);
			}
		
		void  _Addfac(facet *_Pfacet, size_t _Id)
			{
			_Locimp_Addfac(this, _Pfacet, _Id);
			}

		static _Locimp * _Makeloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

		static void _Makewloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

 
		static void _Makeushloc(const _Locinfo&,
			category, _Locimp *, const locale *);	
 #line 237 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

		static void _Makexloc(const _Locinfo&,
			category, _Locimp *, const locale *);	

		facet **_Facetvec;	
		size_t _Facetcount;	
		category _Catmask;	
		bool _Xparent;	
		_DebugHeapString _Name;	

		static  _Locimp *& __cdecl _Clocptr_func();	



		 static _Locimp *_Clocptr;	
#line 253 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
private:
		_Locimp&  operator=(const _Locimp&);	
	
		};
#pragma warning(pop)

	__declspec(deprecated("This is an obsolete part of the Standard C++ Library Implementation. Do not use it.")) locale&  _Addfac(facet *_Fac, size_t _Id,
		size_t _Catmask)
		{
		if (1 < this->_Ptr->_Refs)
			{	
			this->_Ptr->_Decref();
			this->_Ptr = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 265) _Locimp(*this->_Ptr);
			}
		this->_Ptr->_Addfac(_Fac, _Id);

		if (_Catmask != 0)
			this->_Ptr->_Name = "*";
		return (*this);
		}


	template<class _Elem,
		class _Traits,
		class _Alloc>
		bool  operator()(const basic_string<_Elem, _Traits, _Alloc>& _Left,
			const basic_string<_Elem, _Traits, _Alloc>& _Right) const
		{	
		const std::collate<_Elem>& _Coll_fac =
			std::use_facet<std::collate<_Elem> >(*this);

		return (_Coll_fac.compare(_Left.c_str(), _Left.c_str() + _Left.size(),
			_Right.c_str(), _Right.c_str() + _Right.size()) < 0);
		}

	template<class _Facet>
		locale  combine(const locale& _Loc) const
		{	
		_Facet *_Facptr;

		try {
			_Facptr = (_Facet *)&std::use_facet<_Facet>(_Loc);
		} catch (...) {
			throw runtime_error("locale::combine facet missing");
		}

		_Locimp *_Newimp = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 299) _Locimp(*_Ptr);
		_Newimp->_Addfac(_Facptr, _Facet::id);
		_Newimp->_Catmask = 0;
		_Newimp->_Name = "*";
		return (locale(_Newimp));
		}

	template<class _Facet>
		 locale(const locale& _Loc, const _Facet *_Facptr)
			: _Ptr(new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 308) _Locimp(*_Loc._Ptr))
		{	
		if (_Facptr != 0)
			{	
			_Ptr->_Addfac((_Facet *)_Facptr, _Facet::id);
			if (_Facet::_Getcat() != (size_t)(-1))
				{	
				_Ptr->_Catmask = 0;
				_Ptr->_Name = "*";
				}
			}
		}


	 locale() throw ()
		: _Ptr(_Init())
		{	
		_Getgloballocale()->_Incref();
		}

	 locale(_Uninitialized)
		{	
		}

	 locale(const locale& _Right) throw ()
		: _Ptr(_Right._Ptr)
		{	
		_Ptr->_Incref();
		}

	 locale(const locale& _Loc, const locale& _Other,
		category _Cat) 	
		: _Ptr(new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 340) _Locimp(*_Loc._Ptr))
		{	
		try {
			{ _Locinfo _Lobj(_Loc._Ptr->_Catmask, _Loc._Ptr->_Name.c_str());
				_Locimp::_Makeloc(_Lobj._Addcats(_Cat & _Other._Ptr->_Catmask,
					_Other._Ptr->_Name.c_str()), _Cat, _Ptr, &_Other);
			}
		} catch (...) {
			std::_DebugHeapDelete(_Ptr->_Decref());
			throw;
		}
		}

	explicit  locale(const char *_Locname,
		category _Cat = all) 	
		: _Ptr(new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 355) _Locimp)
		{	
		try {
		_Init();
		{ _Locinfo _Lobj(_Cat, _Locname);
			if (_Lobj._Getname().compare("*") == 0)
				throw runtime_error("bad locale name");
			_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		}
		} catch (...) {
		std::_DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

	 locale(const locale& _Loc, const char * _Locname,
		category _Cat) 	
		: _Ptr(new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 372) _Locimp(*_Loc._Ptr))
		{	
		try {
		{ _Locinfo _Lobj(_Loc._Ptr->_Catmask, _Loc._Ptr->_Name.c_str());
			bool _Hadname = _Lobj._Getname().compare("*") != 0;
			_Lobj._Addcats(_Cat, _Locname);

			if (_Hadname && _Lobj._Getname().compare("*") == 0)
				throw runtime_error("bad locale name");
			_Locimp::_Makeloc(_Lobj, _Cat, _Ptr, 0);
		}
		} catch (...) {
		std::_DebugHeapDelete(_Ptr->_Decref());
		throw;
		}
		}

	 ~locale() throw ()
		{	
		if (_Ptr != 0)
			std::_DebugHeapDelete(_Ptr->_Decref());
		}

	locale&  operator=(const locale& _Right) throw ()
		{	
		if (_Ptr != _Right._Ptr)
			{	
			std::_DebugHeapDelete(_Ptr->_Decref());
			_Ptr = _Right._Ptr;
			_Ptr->_Incref();
			}
		return (*this);
		}

	string  name() const
		{	
		return (_Ptr->_Name);
		}

	const facet * _Getfacet(size_t _Id) const 	
		{	
		const facet *_Facptr = _Id < _Ptr->_Facetcount
			? _Ptr->_Facetvec[_Id] : 0;	
		if (_Facptr != 0 || !_Ptr->_Xparent)
			return (_Facptr);	
		else
			{	
			locale::_Locimp *_Ptr = _Getgloballocale();
			return (_Id < _Ptr->_Facetcount
				? _Ptr->_Facetvec[_Id]	
				: 0);	
			}
		}


	bool  operator==(const locale& _Loc) const
		{	
		return (_Ptr == _Loc._Ptr
			|| name().compare("*") != 0 && name().compare(_Loc.name()) == 0);
		}

	bool  operator!=(const locale& _Right) const
		{	
		return (!(*this == _Right));
		}

	static  const locale& __cdecl classic();	

	static  locale __cdecl global(const locale&);	

	static  locale __cdecl empty();	

private:
	locale(_Locimp *_Ptrimp)
		: _Ptr(_Ptrimp)
		{	
		}

	static  _Locimp *__cdecl _Getgloballocale();
	static  _Locimp *__cdecl _Init();	
	static  void __cdecl _Setgloballocale(void *);

	_Locimp *_Ptr;	
	};
#pragma warning(pop)

		
template<class _Facet>
	struct _Facetptr
	{	
	 static const locale::facet *_Psave;
	};

template<class _Facet>
	 const locale::facet *_Facetptr<_Facet>::_Psave = 0;

template<class _Facet> inline __declspec(deprecated("This is an obsolete part of the Standard C++ Library Implementation. Do not use it."))
	locale _Addfac(locale _Loc, const _Facet *_Facptr)
		{	
		size_t _Cat = _Facet::_Getcat(0, 0);
		locale _Newloc = _Loc._Addfac((_Facet *)_Facptr, _Facet::id, _Cat);

		return (_Newloc);
		}

  

  


template<class _Facet> inline
	const _Facet& __cdecl use_facet(const locale& _Loc)


{	
	{ ::std:: _Lockit _Lock(0);	
		const locale::facet *_Psave =
			_Facetptr<_Facet>::_Psave;	

		size_t _Id = _Facet::id;
		const locale::facet *_Pf = _Loc._Getfacet(_Id);

		if (_Pf != 0)
			;	
		else if (_Psave != 0)
			_Pf = _Psave;	
		else if (_Facet::_Getcat(&_Psave, &_Loc) == (size_t)(-1))

 
		throw bad_cast();	

	

#line 506 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

		else
			{	
			_Pf = _Psave;
			_Facetptr<_Facet>::_Psave = _Psave;

			locale::facet *_Pfmod = (_Facet *)_Psave;
			_Pfmod->_Incref();
			_Pfmod->_Register();
			}

		return ((const _Facet&)(*_Pf));	
	}
	}

template<class _Facet> inline __declspec(deprecated("This is an obsolete part of the Standard C++ Library Implementation. Do not use it."))
	const _Facet& __cdecl use_facet(const locale& _Loc, const _Facet *,
		bool = false)
	{	
	return use_facet<_Facet>(_Loc);
	}

		
template<class _Elem,
	class _InIt> inline
	int __cdecl _Getloctxt(_InIt& _First, _InIt& _Last, size_t _Numfields,
		const _Elem *_Ptr)
	{	
	for (size_t _Off = 0; _Ptr[_Off] != (_Elem)0; ++_Off)
		if (_Ptr[_Off] == _Ptr[0])
			++_Numfields;	
	string _Str(_Numfields, '\0');	

	int _Ans = -2;	
	for (size_t _Column = 1; ; ++_Column, ++_First, _Ans = -1)
		{	
		bool  _Prefix = false;	
		size_t _Off = 0;	
		size_t _Field = 0;	

		for (; _Field < _Numfields; ++_Field)
			{	
			for (; _Ptr[_Off] != (_Elem)0 && _Ptr[_Off] != _Ptr[0]; ++_Off)
				;	

			if (_Str[_Field] != '\0')
				_Off += _Str[_Field];	
			else if (_Ptr[_Off += _Column] == _Ptr[0]
				|| _Ptr[_Off] == (_Elem)0)
				{	
				_Str[_Field] = (char)(_Column < 127
					? _Column : 127);	
				_Ans = (int)_Field;	
				}
			else if (_First == _Last || _Ptr[_Off] != *_First)
				_Str[_Field] = (char)(_Column < 127
					? _Column : 127);	
			else
				_Prefix = true;	
			}

		if (!_Prefix || _First == _Last)
			break;	
		}
	return (_Ans);	
	}

		



template<class _Elem> inline
	char __cdecl _Maklocbyte(_Elem _Char,
		const _Locinfo::_Cvtvec&)
	{	
	return ((char)(unsigned char)_Char);
	}

template<> inline
	char __cdecl _Maklocbyte(wchar_t _Char,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	char _Byte = '\0';
	mbstate_t _Mbst1 = {0};
	_Wcrtomb(&_Byte, _Char, &_Mbst1, &_Cvt);
	return (_Byte);
	}


		



template<class _Elem> inline
	_Elem __cdecl _Maklocchr(char _Byte, _Elem *,
		const _Locinfo::_Cvtvec&)
	{	
	return ((_Elem)(unsigned char)_Byte);
	}

template<> inline
	wchar_t __cdecl _Maklocchr(char _Byte, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	wchar_t _Wc = L'\0';
	mbstate_t _Mbst1 = {0};
	_Mbrtowc(&_Wc, &_Byte, 1, &_Mbst1, &_Cvt);
	return (_Wc);
	}


		



template<class _Elem> inline
	_Elem *__cdecl _Maklocstr(const char *_Ptr, _Elem *,
		const _Locinfo::_Cvtvec&)
	{	
	size_t _Count = ::strlen(_Ptr) + 1;
	_Elem *_Ptrdest = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 626) _Elem[_Count];

#pragma warning(push)
#pragma warning(disable: 6011)
	
	for (_Elem *_Ptrnext = _Ptrdest; 0 < _Count; --_Count, ++_Ptrnext, ++_Ptr)
		*_Ptrnext = (_Elem)(unsigned char)*_Ptr;
	return (_Ptrdest);
#pragma warning(pop)
	}

template<> inline
	wchar_t *__cdecl _Maklocstr(const char *_Ptr, [SA_Pre(Null=SA_Maybe,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] wchar_t *,
		const _Locinfo::_Cvtvec& _Cvt)
	{	
	size_t _Count, _Count1;
	size_t _Wchars;
	const char *_Ptr1;
	int _Bytes;
	wchar_t _Wc;
	mbstate_t _Mbst1 = {0};

	_Count1 = ::strlen(_Ptr) + 1;
	for (_Count = _Count1, _Wchars = 0, _Ptr1 = _Ptr; 0 < _Count;
		_Count -= _Bytes, _Ptr1 += _Bytes, ++_Wchars)
		if ((_Bytes = _Mbrtowc(&_Wc, _Ptr1, _Count, &_Mbst1, &_Cvt)) <= 0)
			break;
	++_Wchars;	

	wchar_t *_Ptrdest = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 655) wchar_t[_Wchars];
	wchar_t *_Ptrnext = _Ptrdest;
	mbstate_t _Mbst2 = {0};
#pragma warning(push)
#pragma warning(disable: 6011)
	
	for (; 0 < _Wchars;
		_Count -= _Bytes, _Ptr += _Bytes, --_Wchars, ++_Ptrnext)
		if ((_Bytes = _Mbrtowc(_Ptrnext, _Ptr, _Count1, &_Mbst2, &_Cvt)) <= 0)
			break;
	*_Ptrnext = L'\0';
#pragma warning(pop)
	return (_Ptrdest);
	}


#pragma warning(push)
#pragma warning(disable:4275)
		
class __declspec(dllimport) codecvt_base
	: public locale::facet
	{	
public:
	enum
		{	
		ok, partial, error, noconv};
	typedef int result;

	 codecvt_base(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		}

	bool  always_noconv() const throw ()
		{	
		return (do_always_noconv());
		}

	int  max_length() const throw ()
		{	
		return (do_max_length());
		}

	int  encoding() const throw ()
		{	
		return (do_encoding());
		}

	 ~codecvt_base()
		{	
		}

protected:
	virtual bool  do_always_noconv() const throw ()
		{	
		return (true);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (1);
		}

	virtual int  do_encoding() const throw ()
		{	
		return (1);	
		}
	};
#pragma warning(pop)

		
template<class _Elem,
	class _Byte,
	class _Statype>
	class codecvt
		: public codecvt_base
	{	
public:
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State, _First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	 static locale::id id;	

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 785) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->name()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

protected:
	void  _Init(const _Locinfo&)
		{	
		}

	virtual result  do_in(_Statype&,
		const _Byte *_First1, const _Byte *, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *, _Elem *& _Mid2) const
		{	
		_Mid1 = _First1, _Mid2 = _First2;
		return (noconv);	
		}

	virtual result  do_out(_Statype&,
		const _Elem *_First1, const _Elem *, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *, _Byte *& _Mid2) const
		{	
		_Mid1 = _First1, _Mid2 = _First2;
		return (noconv);	
		}

	virtual result  do_unshift(_Statype&,
		_Byte *_First2, _Byte *, _Byte *&_Mid2) const
		{	
		_Mid2 = _First2;
		return (noconv);	
		}

	virtual int  do_length(const _Statype&, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return ((int)(_Count < (size_t)(_Last1 - _First1)
			? _Count : _Last1 - _First1));	
		}
	};

		
template<class _Elem,
	class _Byte,
	class _Statype>
	 locale::id codecvt<_Elem, _Byte, _Statype>::id;

		
template<> class __declspec(dllimport) codecvt<wchar_t, char, _Mbstatet>
	: public codecvt_base
	{	
public:
	typedef wchar_t _Elem;
	typedef char _Byte;
	typedef _Mbstatet _Statype;
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State,
			_First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	static  locale::id& __cdecl _Id_func();



	 static locale::id id;	
#line 884 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 903) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->name()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

protected:
	void  _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	virtual result  do_in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
			_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 923);
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 924);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			switch (_Bytes = _Mbrtowc(_Mid2, _Mid1, _Last1 - _Mid1,
				&_State, &_Cvt))
			{	
			case -2:	
				_Mid1 = _Last1;
				return (_Ans);

			case -1:	
				return (error);

			case 0:	
				if (*_Mid2 == (_Elem)0)
					_Bytes = (int)::strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Mid2;
				_Ans = ok;
			}
		return (_Ans);
		}

	virtual result  do_out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
			_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 959);
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 960);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			if ((int)___mb_cur_max_func() <= _Last2 - _Mid2)
				if ((_Bytes = _Wcrtomb(_Mid2, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
			else
				{	
				_Byte _Buf[5];
				_Statype _Stsave = _State;

				if ((_Bytes = _Wcrtomb(_Buf, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else if (_Last2 - _Mid2 < _Bytes)
					{	
					_State = _Stsave;
					return (_Ans);
					}
				else
					{	
					::memcpy_s((_Mid2), (_Last2 - _Mid2), (_Buf), (_Bytes));
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
					}
				}
		return (_Ans);
		}

	virtual result  do_unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 997);
		_Mid2 = _First2;
		result _Ans = ok;
		int _Bytes;
		_Byte _Buf[5];
		_Statype _Stsave = _State;

		if ((_Bytes = _Wcrtomb(_Buf, L'\0', &_State, &_Cvt)) <= 0)
			_Ans = error;	
		else if (_Last2 - _Mid2 < --_Bytes)
			{	
			_State = _Stsave;
			_Ans = partial;
			}
		else if (0 < _Bytes)
			{	
			::memcpy_s((_Mid2), (_Last2 - _Mid2), (_Buf), (_Bytes));
			_Mid2 += _Bytes;
			}
		return (_Ans);
		}

	virtual int  do_length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	

 



#line 1028 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1028);
		int _Wchars;
		const _Byte *_Mid1;
		_Statype _Mystate = _State;

		for (_Wchars = 0, _Mid1 = _First1;
			(size_t)_Wchars < _Count && _Mid1 != _Last1; )
			{	
			int _Bytes;
			_Elem _Ch;

			switch (_Bytes = _Mbrtowc(&_Ch, _Mid1, _Last1 - _Mid1,
				&_Mystate, &_Cvt))
				{	
			case -2:	
				return (_Wchars);

			case -1:	
				return (_Wchars);

			case 0:	
				if (_Ch == (_Elem)0)
					_Bytes = (int)::strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Wchars;
				}
			}
		return (_Wchars);
 #line 1062 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"
		}

	virtual bool  do_always_noconv() const throw ()
		{	
		return (false);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (5);
		}

private:
	_Locinfo::_Cvtvec _Cvt;	
	};


		
template<> class __declspec(dllimport) codecvt<unsigned short, char, _Mbstatet>
	: public codecvt_base
	{	
public:
	typedef unsigned short _Elem;
	typedef char _Byte;
	typedef _Mbstatet _Statype;
	typedef _Elem intern_type;
	typedef _Byte extern_type;
	typedef _Statype state_type;

	result  in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
		_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		return (do_in(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_out(_State,
			_First1, _Last1, _Mid1, _First2, _Last2, _Mid2));
		}

	result  unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		return (do_unshift(_State,
			_First2, _Last2, _Mid2));
		}

	int  length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		return (do_length(_State, _First1, _Last1, _Count));
		}

	static  locale::id& __cdecl _Id_func();



	 static locale::id id;	
#line 1126 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

	explicit  codecvt(size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 codecvt(const _Locinfo& _Lobj, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1145) codecvt<_Elem, _Byte, _Statype>(
				_Locinfo(_Ploc->name()));
		return (2);
		}

protected:
	virtual  ~codecvt()
		{	
		}

protected:
	 codecvt(const char *_Locname, size_t _Refs = 0)
		: codecvt_base(_Refs)
		{	
		{ _Locinfo _Lobj(_Locname);
			_Init(_Lobj);
		}
		}

	void  _Init(const _Locinfo& _Lobj)
		{	
		_Cvt = _Lobj._Getcvt();
		}

	virtual result  do_in(_Statype& _State,
		const _Byte *_First1, const _Byte *_Last1, const _Byte *& _Mid1,
			_Elem *_First2, _Elem *_Last2, _Elem *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1173);
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1174);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			switch (_Bytes = _Mbrtowc((wchar_t *)_Mid2, _Mid1, _Last1 - _Mid1,
				&_State, &_Cvt))
			{	
			case -2:	
				_Mid1 = _Last1;
				return (_Ans);

			case -1:	
				return (error);

			case 0:	
				if (*_Mid2 == (_Elem)0)
					_Bytes = (int)::strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Mid2;
				_Ans = ok;
			}
		return (_Ans);
		}

	virtual result  do_out(_Statype& _State,
		const _Elem *_First1, const _Elem *_Last1, const _Elem *& _Mid1,
			_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1209);
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1210);
		_Mid1 = _First1, _Mid2 = _First2;
		result _Ans = _Mid1 == _Last1 ? ok : partial;
		int _Bytes;

		while (_Mid1 != _Last1 && _Mid2 != _Last2)
			if (5 <= _Last2 - _Mid2)
				if ((_Bytes = _Wcrtomb(_Mid2, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
			else
				{	
				_Byte _Buf[5];
				_Statype _Stsave = _State;

				if ((_Bytes = _Wcrtomb(_Buf, *_Mid1,
					&_State, &_Cvt)) < 0)
					return (error);	
				else if (_Last2 - _Mid2 < _Bytes)
					{	
					_State = _Stsave;
					return (_Ans);
					}
				else
					{	
					::memcpy_s((_Mid2), (_Last2 - _Mid2), (_Buf), (_Bytes));
					++_Mid1, _Mid2 += _Bytes, _Ans = ok;
					}
				}
		return (_Ans);
		}

	virtual result  do_unshift(_Statype& _State,
		_Byte *_First2, _Byte *_Last2, _Byte *& _Mid2) const
		{	
		_Debug_range(_First2, _Last2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1247);
		_Mid2 = _First2;
		result _Ans = ok;
		int _Bytes;
		_Byte _Buf[5];
		_Statype _Stsave = _State;

		if ((_Bytes = _Wcrtomb(_Buf, L'\0', &_State, &_Cvt)) <= 0)
			_Ans = error;	
		else if (_Last2 - _Mid2 < --_Bytes)
			{	
			_State = _Stsave;
			_Ans = partial;
			}
		else if (0 < _Bytes)
			{	
			::memcpy_s((_Mid2), (_Last2 - _Mid2), (_Buf), (_Bytes));
			_Mid2 += _Bytes;
			}
		return (_Ans);
		}

	virtual int  do_length(const _Statype& _State, const _Byte *_First1,
		const _Byte *_Last1, size_t _Count) const
		{	
		_Debug_range(_First1, _Last1, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1272);
		int _Wchars;
		const _Byte *_Mid1;
		_Statype _Mystate = _State;

		for (_Wchars = 0, _Mid1 = _First1;
			(size_t)_Wchars < _Count && _Mid1 != _Last1; )
			{	
			int _Bytes;
			_Elem _Ch;

			switch (_Bytes = _Mbrtowc((wchar_t *)&_Ch, _Mid1, _Last1 - _Mid1,
				&_Mystate, &_Cvt))
				{	
			case -2:	
				return (_Wchars);

			case -1:	
				return (_Wchars);

			case 0:	
				if (_Ch == (_Elem)0)
					_Bytes = (int)::strlen(_Mid1) + 1;
				

			default:	
				if (_Bytes == -3)
					_Bytes = 0;	
				_Mid1 += _Bytes;
				++_Wchars;
				}
			}
		return (_Wchars);
		}

	virtual bool  do_always_noconv() const throw ()
		{	
		return (false);
		}

	virtual int  do_max_length() const throw ()
		{	
		return (5);
		}

private:
	_Locinfo::_Cvtvec _Cvt;	
	};
#line 1321 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

		
template<class _Elem,
	class _Byte,
	class _Statype>
	class codecvt_byname
		: public codecvt<_Elem, _Byte, _Statype>
	{	
public:
	explicit  codecvt_byname(const char *_Locname, size_t _Refs = 0)
		: codecvt<_Elem, _Byte, _Statype>(_Locname, _Refs)
		{	
		}

protected:
	virtual  ~codecvt_byname()
		{	
		}
	};

#pragma warning(push)
#pragma warning(disable:4275)
		
struct __declspec(dllimport) ctype_base
	: public locale::facet
	{	
	enum
		{	
		alnum = 0x4|0x2|0x1|0x100, alpha = 0x2|0x1|0x100,
		cntrl = 0x20, digit = 0x4, graph = 0x4|0x2|0x10|0x1|0x100,
		lower = 0x2, print = 0x4|0x2|0x10|0x40|0x1|0x100|0x80,
		punct = 0x10, space = 0x8|0x40|0x000, upper = 0x1,
		xdigit = 0x80};
	typedef short mask;	

	 ctype_base(size_t _Refs = 0)
		: locale::facet(_Refs)
		{	
		}

	 ~ctype_base()
		{	
		}

protected:
	static void __cdecl _Xran()
		{	
		throw out_of_range("out_of_range in ctype<T>");
		}
	};
#pragma warning(pop)

		
template<class _Elem>
	class ctype
		: public ctype_base
	{	
public:
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return (do_is(_Maskval, _Ch));
		}

	const _Elem * is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		return (do_is(_First, _Last, _Dest));
		}

	const _Elem * scan_is(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_is(_Maskval, _First, _Last));
		}

	const _Elem * scan_not(mask _Maskval, const _Elem *_First,
		const _Elem *_Last) const
		{	
		return (do_scan_not(_Maskval, _First, _Last));
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	const char * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
#pragma warning(push)
#pragma warning(disable:4996)
		return (do_widen(_First, _Last, _Dest));
#pragma warning(pop)
		}

	const char * _Widen_s(const char *_First, const char *_Last,
		_Elem *_Dest, size_t _Dest_size) const
		{	
		return (_Do_widen_s(_First, _Last, _Dest, _Dest_size));
		}

	char  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, [SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] char *_Dest) const
		{	
		
#pragma warning(push)
#pragma warning(disable:4996)
		return (do_narrow(_First, _Last, _Dflt, _Dest));
#pragma warning(pop)
		}

	const _Elem * _Narrow_s(const _Elem *_First, const _Elem *_Last,
		char _Dflt, [SA_Pre(Null=SA_No,WritableElements="_Dest_size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, size_t _Dest_size) const
		{	
		return (_Do_narrow_s(_First, _Last, _Dflt, _Dest, _Dest_size));
		}

	 static locale::id id;	

	explicit  ctype(size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1487) ctype<_Elem>(
				_Locinfo(_Ploc->name()));
		return (2);
		}

protected:
	virtual  ~ctype()
		{	
		if (_Ctype._Delfl)
			free((void *)_Ctype._Table);
		}

protected:
	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		}

	virtual bool  do_is(mask _Maskval, _Elem _Ch) const
		{	
		return ((_Ctype._Table[(unsigned char)narrow(_Ch)]
			& _Maskval) != 0);
		}

	virtual const _Elem * do_is(const _Elem *_First, const _Elem *_Last,
		mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1514);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1515);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Ctype._Table[(unsigned char)narrow(*_First)];
		return (_First);
		}

	virtual const _Elem * do_scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1524);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual const _Elem * do_scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1533);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
		if (_Byte == '\0')
			return (_Ch);
		else
			return (widen((char)_Tolower(_Byte, &_Ctype)));
		}

	virtual const _Elem * do_tolower(_Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1550);
		for (; _First != _Last; ++_First)
			{	
			unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
			if (_Byte != '\0')
				*_First = (widen((char)_Tolower(_Byte, &_Ctype)));
			}
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		unsigned char _Byte = (unsigned char)narrow(_Ch, '\0');
		if (_Byte == '\0')
			return (_Ch);
		else
			return (widen((char)_Toupper(_Byte, &_Ctype)));
		}

	virtual const _Elem * do_toupper(_Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1571);
		for (; _First != _Last; ++_First)
			{	
			unsigned char _Byte = (unsigned char)narrow(*_First, '\0');
			if (_Byte != '\0')
				*_First = (widen((char)_Toupper(_Byte, &_Ctype)));
			}
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Maklocchr(_Byte, (_Elem *)0, _Cvt));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	virtual const char * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		
		return _Do_widen_s(_First, _Last, _Dest, _Last - _First);
		}

	virtual const char * _Do_widen_s(const char *_First,
		const char *_Last, _Elem *_Dest, size_t _Dest_size) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1597);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1598);
		{ if (!(_Dest_size >= (size_t)(_Last - _First))) { (void) ((!!((("_Dest_size >= (size_t)(_Last - _First)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1599, 0, L"(\"_Dest_size >= (size_t)(_Last - _First)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1599, 0); } ; };
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Maklocchr(*_First, (_Elem *)0, _Cvt);
		return (_First);
		}

	char  _Donarrow(_Elem _Ch, char _Dflt) const
		{	
		char _Byte;
		if (_Ch == (_Elem)0)
			return ('\0');
		else if ((_Byte = _Maklocbyte((_Elem)_Ch, _Cvt)) == '\0')
			return (_Dflt);
		else
			return (_Byte);
		}

	virtual char  do_narrow(_Elem _Ch, char _Dflt) const
		{	
		return (_Donarrow(_Ch, _Dflt));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char _Dflt, [SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] char *_Dest) const
		{	
		
		return _Do_narrow_s(_First, _Last, _Dflt, _Dest, _Last - _First);
		}

	virtual const _Elem * _Do_narrow_s(const _Elem *_First,
		const _Elem *_Last, char _Dflt, 
		[SA_Pre(Null=SA_No,WritableElements="_Dest_size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, 
		size_t _Dest_size) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1634);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1635);
		{ if (!(_Dest_size >= (size_t)(_Last - _First))) { (void) ((!!((("_Dest_size >= (size_t)(_Last - _First)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1636, 0, L"(\"_Dest_size >= (size_t)(_Last - _First)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1636, 0); } ; };
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Donarrow(*_First, _Dflt);
		return (_First);
		}

private:
	_Locinfo::_Ctypevec _Ctype;	
	_Locinfo::_Cvtvec _Cvt;		
	};

		
template<class _Elem>
	 locale::id ctype<_Elem>::id;

		
template<> class __declspec(dllimport) ctype<char>
	: public ctype_base
	{	
	typedef ctype<char> _Myt;

public:
	typedef char _Elem;
	typedef _Elem char_type;

	bool  is(mask _Maskval, _Elem _Ch) const
		{	
		return ((_Ctype._Table[(unsigned char)_Ch] & _Maskval) != 0);
		}

	const _Elem * is(const _Elem *_First,
		const _Elem *_Last, mask *_Dest) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1669);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1670);
		for (; _First != _Last; ++_First, ++_Dest)
			*_Dest = _Ctype._Table[(unsigned char)*_First];
		return (_First);
		}

	const _Elem * scan_is(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1679);
		for (; _First != _Last && !is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	const _Elem * scan_not(mask _Maskval,
		const _Elem *_First, const _Elem *_Last) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1688);
		for (; _First != _Last && is(_Maskval, *_First); ++_First)
			;
		return (_First);
		}

	_Elem  tolower(_Elem _Ch) const
		{	
		return (do_tolower(_Ch));
		}

	const _Elem * tolower(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_tolower(_First, _Last));
		}

	_Elem  toupper(_Elem _Ch) const
		{	
		return (do_toupper(_Ch));
		}

	const _Elem * toupper(_Elem *_First, const _Elem *_Last) const
		{	
		return (do_toupper(_First, _Last));
		}

	_Elem  widen(char _Byte) const
		{	
		return (do_widen(_Byte));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	const _Elem * widen(const char *_First, const char *_Last,
		_Elem *_Dest) const
		{	
		
#pragma warning(push)
#pragma warning(disable:4996)
		return (do_widen(_First, _Last, _Dest));
#pragma warning(pop)
		}

	const _Elem * _Widen_s(const char *_First, const char *_Last,
		_Elem *_Dest, size_t _Dest_size) const
		{	
		return (_Do_widen_s(_First, _Last, _Dest, _Dest_size));
		}

	_Elem  narrow(_Elem _Ch, char _Dflt = '\0') const
		{	
		return (do_narrow(_Ch, _Dflt));
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	const _Elem * narrow(const _Elem *_First, const _Elem *_Last,
		char _Dflt, [SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] char *_Dest) const
		{	
		
#pragma warning(push)
#pragma warning(disable:4996)
		return (do_narrow(_First, _Last, _Dflt, _Dest));
#pragma warning(pop)
		}

	const _Elem * _Narrow_s(const _Elem *_First, const _Elem *_Last,
		char _Dflt, [SA_Pre(Null=SA_No,WritableElements="_Dest_size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, 
		size_t _Dest_size) const
		{	
		return (_Do_narrow_s(_First, _Last, _Dflt, _Dest, _Dest_size));
		}

	static  locale::id& __cdecl _Id_func();



	 static locale::id id;	
#line 1765 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale"

	explicit  ctype(const mask *_Table = 0,
		bool _Deletetable = false,
		size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		{ _Locinfo _Lobj;
			_Init(_Lobj);
		}
		if (_Table != 0)
			{	
			_Tidy();
			_Ctype._Table = _Table;
			_Ctype._Delfl = _Deletetable ? -1 : 0;
			}
		}

	 ctype(const _Locinfo& _Lobj, size_t _Refs = 0)
		: ctype_base(_Refs)
		{	
		_Init(_Lobj);
		}

	static size_t __cdecl _Getcat(const locale::facet **_Ppf = 0,
		const locale *_Ploc = 0)
		{	
		if (_Ppf != 0 && *_Ppf == 0)
			*_Ppf = new(std::_DebugHeapTag_func(), "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1792) ctype<_Elem>(
				_Locinfo(_Ploc->name()));
		return (2);
		}

	 static const size_t table_size = 1 << 8;	

protected:
	virtual  ~ctype()
		{	
		_Tidy();
		}

protected:
	void  _Init(const _Locinfo& _Lobj)
		{	
		_Ctype = _Lobj._Getctype();
		}

	void  _Tidy()
		{	
		if (0 < _Ctype._Delfl)
			free((void *)_Ctype._Table);
		else if (_Ctype._Delfl < 0)
			delete[] (void *)_Ctype._Table;
		}

	virtual _Elem  do_tolower(_Elem _Ch) const
		{	
		return ((_Elem)_Tolower((unsigned char)_Ch, &_Ctype));
		}

	virtual const _Elem * do_tolower(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1827);
		for (; _First != _Last; ++_First)
			*_First = (_Elem)_Tolower((unsigned char)*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_toupper(_Elem _Ch) const
		{	
		return ((_Elem)_Toupper((unsigned char)_Ch, &_Ctype));
		}

	virtual const _Elem * do_toupper(_Elem *_First,
		const _Elem *_Last) const
		{	
		_Debug_range((const _Elem *)_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1841);
		for (; _First != _Last; ++_First)
			*_First = (_Elem)_Toupper((unsigned char)*_First, &_Ctype);
		return ((const _Elem *)_First);
		}

	virtual _Elem  do_widen(char _Byte) const
		{	
		return (_Byte);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	virtual const _Elem * do_widen(const char *_First,
		const char *_Last, _Elem *_Dest) const
		{	
		
		return _Do_widen_s(_First, _Last, _Dest, _Last - _First);
		}

	virtual const _Elem * _Do_widen_s(const char *_First,
		const char *_Last, _Elem *_Dest, size_t _Dest_size) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1863);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1864);
		{ if (!(_Dest_size >= (size_t)(_Last - _First))) { (void) ((!!((("_Dest_size >= (size_t)(_Last - _First)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1865, 0, L"(\"_Dest_size >= (size_t)(_Last - _First)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1865, 0); } ; };
		::memcpy_s((_Dest), (_Dest_size), (_First), (_Last - _First));
		return (_Last);
		}

	virtual _Elem  do_narrow(_Elem _Ch, char) const
		{	
		return (_Ch);
		}

	__declspec(deprecated("Function call with parameters that may be unsafe - this call relies on the caller to check that the passed values are correct. " "To disable this warning, use -D_SCL_SECURE_NO_WARNINGS. See documentation on how to use Visual C++ 'Checked Iterators'"))
	virtual const _Elem * do_narrow(const _Elem *_First,
		const _Elem *_Last, char _Dflt, 
		[SA_Pre(Null=SA_No,WritableElements="\n@""_Last-_First")] [SA_Pre(Deref=1,Valid=SA_No)] char *_Dest) const
		{	
		
		return _Do_narrow_s(_First, _Last, _Dflt, _Dest, _Last - _First);
		}

	virtual const _Elem * _Do_narrow_s(const _Elem *_First,
		const _Elem *_Last, char, [SA_Pre(Null=SA_No,WritableElements="_Dest_size")] [SA_Pre(Deref=1,Valid=SA_No)] [SA_Post(ValidElements="\n@""_Last-_First")] [SA_Post(Deref=1,Valid=SA_Yes)] char *_Dest, 
		size_t _Dest_size) const
		{	
		_Debug_range(_First, _Last, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1888);
		_Debug_pointer(_Dest, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale",1889);
		{ if (!(_Dest_size >= (size_t)(_Last - _First))) { (void) ((!!((("_Dest_size >= (size_t)(_Last - _First)", 0)))) || (1 != _CrtDbgReportW(2, L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1890, 0, L"(\"_Dest_size >= (size_t)(_Last - _First)\", 0)")) || (__debugbreak(), 0)); ::_invalid_parameter(L"\"out of range\"", __LPREFIX( __FUNCTION__), L"c:\\program files\\microsoft visual studio 9.0\\vc\\include\\xlocale", 1890, 0); } ; };
		return (_Last);
		}

		{	
		}

		{	
		}