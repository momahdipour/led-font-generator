unit LCDConsts;

interface

uses
  Graphics;

const

  { Main Application }

  //Version number
  MAJOR_VERSION_NUMBER = 2;
  MAJOR_VERSION_NUMBER_STR = '2';
  MINOR_VERSION_NUMBER = 0;
  MINOR_VERSION_NUMBER_STR = '0';

  //Software name
  { *** IMPORTANR NOTE ABOUT THE EXE FILE NAME *** }
  {
    For security reasons, the exe file name is checked in the OnCreate event of
    the main form. The "GetEncryptedExeName" function stores encrypted form of
    the exe file name and returns the normal exe file name.
    This function is stored into the MainUnit to be harder to locate it in the
    code.
    ALWAYS change that function to reflect the APPLICATION_EXE_FILE_NAME value
    in lowercase.
  }
  SOFTWARE_NAME = 'LED Font Generator';
  APPLICATION_STATIC_CAPTION = SOFTWARE_NAME + ' ' + MAJOR_VERSION_NUMBER_STR + '.' + MINOR_VERSION_NUMBER_STR;
  APPLICATION_EXE_FILE_NAME = 'LFG.exe';
  UNTITLED_DOCUMENT_NAME = 'Design';
  ///////////////

  //Registry paths
  REG_USER_SETTINGS_PATH = ('Software\' + SOFTWARE_NAME + '\' + MAJOR_VERSION_NUMBER_STR + '.' + MINOR_VERSION_NUMBER_STR);

  //Web urls
  SOFTWARE_HOME_PAGE = 'http://www.lcddesigner.com';
  SOFTWARE_REGISTRATION_PAGE = 'http://www.lcddesigner.com';
  SOFTWARE_DEFAULT_UPDATE_URL = 'http://www.lcddesigner.com/updates';
  SOFTWARE_WEBSITE_ROOT_URL = 'localhost';  //'www.lcddesigner.com';

  { Character Designer }

  //CD prefix for all the specific constants (with some exceptions)
  { *** IMPORTANR NOTE ABOUT THE EXE FILE NAME *** }
  {
    For security reasons, the exe file name is checked in the OnCreate event of
    the main form. The "GetEncryptedExeName" function stores encrypted form of
    the exe file name and returns the normal exe file name.
    This function is stored into the MainUnit to be harder to locate it in the
    code.
    ALWAYS change that function to reflect the CD_APPLICATION_EXE_FILE_NAME
    value in lowercase.
  }
  CD_SOFTWARE_NAME = 'LED Character Designer';
  CD_APPLICATION_STATIC_CAPTION = CD_SOFTWARE_NAME;
  CD_APPLICATION_EXE_FILE_NAME = 'CharacterDesigner.exe';

  //Registry paths
  REG_CHARACTER_DESIGNER_PATH = '\Character Designer';

  { File Format Specifiers }

  CHAR_FILE_END_ROW_SPECIFIER = '-';
  DESIGN_FILE_END_ROW_SPECIFIER = '=';

  { LCD default colors }
  
  DEFAULT_LCD_FILLED_COLOR = clBlue;
  DEFAULT_LCD_CLEARED_COLOR = clWhite;
  DEFAULT_LCD_CURSOR_COLOR = clBlack;
  DEFAULT_LCD_GRIDLINES_COLOR = $00E6E6E6;

implementation

end.
