unit LCDTypes;

interface

type
  TApplicationState = (asLoading,  //Application is loading and creating the forms
                       asTerminating  //Application is about to terminate and the main form close is pending
                      );

implementation

end.
