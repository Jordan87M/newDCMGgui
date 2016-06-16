function varargout = GUIv2(varargin)
% GUIV2 MATLAB code for GUIv2.fig
%      GUIV2, by itself, creates a new GUIV2 or raises the existing
%      singleton*.
%
%      H = GUIV2 returns the handle to a new GUIV2 or the handle to
%      the existing singleton*.
%
%      GUIV2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUIV2.M with the given input arguments.
%
%      GUIV2('Property','Value',...) creates a new GUIV2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUIv2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUIv2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUIv2

% Last Modified by GUIDE v2.5 15-Jun-2016 20:12:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIv2_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIv2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUIv2 is made visible.
function GUIv2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIv2 (see VARARGIN)

% Choose default command line output for GUIv2
handles.output = hObject;

% Update handles structure
h = guidata(hObject, handles);
assignin('base','GUIhandles',h);

'initializing workspace variables'
assignin('base','modelname','DCMG_SG');
assignin('base','subname','HMI_out');

assignin('base','Source1MatchPending',0);
assignin('base','Source2MatchPending',0);
assignin('base','Source3MatchPending',0);
assignin('base','Source4MatchPending',0);
assignin('base','Source5MatchPending',0);
assignin('base','Source6MatchPending',0);

assignin('base','icon1Index',0);
assignin('base','icon2Index',0);
assignin('base','icon3Index',0);
assignin('base','icon4Index',0);
assignin('base','icon5Index',0);
assignin('base','icon6Index',0);
iconList = {'NC.png',
    'SourceA.png',
    'SourceB.png',
    'DischargeA.png',
    'ChargeA.png',
    'DischargeB.png',
    'ChargeB.png',
    'SourceC.png',
    'SourceD.png'};
assignin('base','iconList',iconList);



% UIWAIT makes GUIv2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIv2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function BR2B1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TIE1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to TIE1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TIE1_Current as text
%        str2double(get(hObject,'String')) returns contents of TIE1_Current as a double


% --- Executes during object creation, after setting all properties.
function TIE1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TIE1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TIE2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to TIE2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TIE2_Current as text
%        str2double(get(hObject,'String')) returns contents of TIE2_Current as a double


% --- Executes during object creation, after setting all properties.
function TIE2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TIE2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L1_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L1_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L1_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L1_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L2_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L2_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L2_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L2_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L3_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L3_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L3_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L3_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1L3_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1L3_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B1L3_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B1L3_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L1_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L1_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L1_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L1_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L2_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L2_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L2_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L2_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L3_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L3_Current as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L3_Current as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L3_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2L3_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2L3_Power as text
%        str2double(get(hObject,'String')) returns contents of BR2B2L3_Power as a double


% --- Executes during object creation, after setting all properties.
function BR2B2L3_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L1_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L1_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L1_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L1_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L2_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L2_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L2_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L2_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L3_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L3_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L3_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L3_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1L3_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1L3_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B1L3_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B1L3_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L1_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L1_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L1_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L1_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L1_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L1_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L1_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L1_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L1_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L2_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L2_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L2_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L2_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L2_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L2_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L2_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L2_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L2_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L3_Current_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L3_Current as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L3_Current as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L3_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L3_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2L3_Power_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2L3_Power as text
%        str2double(get(hObject,'String')) returns contents of BR1B2L3_Power as a double


% --- Executes during object creation, after setting all properties.
function BR1B2L3_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2L3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B1_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B1_Voltage as text
%        str2double(get(hObject,'String')) returns contents of BR2B1_Voltage as a double


% --- Executes during object creation, after setting all properties.
function BR2B1_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B1_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B1_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B1_Voltage as text
%        str2double(get(hObject,'String')) returns contents of BR1B1_Voltage as a double


% --- Executes during object creation, after setting all properties.
function BR1B1_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B1_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR1B2_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR1B2_Voltage as text
%        str2double(get(hObject,'String')) returns contents of BR1B2_Voltage as a double


% --- Executes during object creation, after setting all properties.
function BR1B2_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR1B2_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function BR2B2_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BR2B2_Voltage as text
%        str2double(get(hObject,'String')) returns contents of BR2B2_Voltage as a double


% --- Executes during object creation, after setting all properties.
function BR2B2_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC1Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC1Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC1Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC1Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC1Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC1Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC1Unreg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC1Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC1Unreg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC1Unreg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC1Unreg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC1Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC1Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC1Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC1Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC1Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC1Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC1Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC1Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC1Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC1Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC1Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC1Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC1Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC2Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC2Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC2Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC2Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC2Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC2Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC2Unreg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC2Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC2Unreg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC2Unreg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC2Unreg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC2Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC2Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC2Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC2Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC2Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC2Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC2Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC2Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC2Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC2Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC2Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC2Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC2Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC3Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC3Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC3Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC3Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC3Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC3Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC3Unreg_voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC3Unreg_voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC3Unreg_voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC3Unreg_voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC3Unreg_voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC3Unreg_voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC3Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC3Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC3Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC3Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC3Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC3Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC3Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC3Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC3Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC3Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC3Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC3Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC4Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC4Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC4Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC4Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC4Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC4Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC4Unreg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC4Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC4Unreg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC4Unreg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC4Unreg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC4Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC4Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC4Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC4Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC4Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC4Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC4Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC4Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC4Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC4Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC4Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC4Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC4Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC5Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC5Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC5Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC5Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC5Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC5Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC5Unreg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC5Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC5Unreg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC5Unreg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC5Unreg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC5Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC5Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC5Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC5Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC5Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC5Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC5Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC5Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC5Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC5Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC5Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC5Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC5Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC6Unreg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC6Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC6Unreg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC6Unreg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC6Unreg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC6Unreg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC6Unreg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC6Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC6Unreg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC6Unreg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC6Unreg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC6Unreg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC6Reg_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to SRC6Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC6Reg_Voltage as text
%        str2double(get(hObject,'String')) returns contents of SRC6Reg_Voltage as a double


% --- Executes during object creation, after setting all properties.
function SRC6Reg_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC6Reg_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC6Reg_Current_Callback(hObject, eventdata, handles)
% hObject    handle to SRC6Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC6Reg_Current as text
%        str2double(get(hObject,'String')) returns contents of SRC6Reg_Current as a double


% --- Executes during object creation, after setting all properties.
function SRC6Reg_Current_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC6Reg_Current (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC1_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC1_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC1_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC1_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC1_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC2_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC2_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC2_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC2_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC2_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC3_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC3_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC3_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC3_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC3_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC4_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC4_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC4_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC4_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC4_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC4_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC5_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC5_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC5_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC5_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC5_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC5_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SRC6_Power_Callback(hObject, eventdata, handles)
% hObject    handle to SRC6_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SRC6_Power as text
%        str2double(get(hObject,'String')) returns contents of SRC6_Power as a double


% --- Executes during object creation, after setting all properties.
function SRC6_Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SRC6_Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Main_Voltage_Callback(hObject, eventdata, handles)
% hObject    handle to Main_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Main_Voltage as text
%        str2double(get(hObject,'String')) returns contents of Main_Voltage as a double


% --- Executes during object creation, after setting all properties.
function Main_Voltage_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Main_Voltage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in BR2B1PROX_User.
function BR2B1PROX_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1PROX_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B1PROX_SG_NC.
function BR2B1PROX_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B1PROX_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B1PROX_User, 1);


% --- Executes on button press in BR2B1PROX_SG_NO.
function BR2B1PROX_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1PROX_SG_NO'];
toggleNO(hObject,blockname);



% --- Executes on button press in BR2B1DIST_User.
function BR2B1DIST_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1DIST_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B1DIST_SG_NC.
function BR2B1DIST_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B1DIST_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B1DIST_User, 1);


% --- Executes on button press in BR2B1DIST_SG_NO.
function BR2B1DIST_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1DIST_SG_NO'];
toggleNO(hObject,blockname);

% --- Executes on button press in BR2B2PROX_User.
function BR2B2PROX_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2PROX_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B2PROX_SG_NC.
function BR2B2PROX_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B2PROX_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B2PROX_User, 1);


% --- Executes on button press in BR2B2PROX_SG_NO.
function BR2B2PROX_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B2PROX_SG_NO'];
toggleNO(hObject,blockname);

% --- Executes on button press in BR2B2DIST_User.
function BR2B2DIST_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2DIST_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B2DIST_SG_NC.
function BR2B2DIST_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B2DIST_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B2DIST_User, 1);


% --- Executes on button press in BR2B2DIST_SG_NO.
function BR2B2DIST_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B2DIST_SG_NO'];
toggleNO(hObject,blockname);

% --- Executes on button press in TIE1_User.
function TIE1_User_Callback(hObject, eventdata, handles)
% hObject    handle to TIE1_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TIE1_SG_NC.
function TIE1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/TIE1_SG_NC' ];
toggleNC(hObject, blockname, handles.TIE1_User, 1);


% --- Executes on button press in TIE1_SG_NO.
function TIE1_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/TIE1_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in TIE2_User.
function TIE2_User_Callback(hObject, eventdata, handles)
% hObject    handle to TIE2_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in TIE2_SG_NC.
function TIE2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/TIE2_SG_NC' ];
toggleNC(hObject, blockname, handles.TIE2_User, 1);


% --- Executes on button press in TIE2_SG_NO.
function TIE2_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/TIE2_SG_NO'];
toggleNO(hObject,blockname);

% --- Executes on button press in BR1B1PROX_User.
function BR1B1PROX_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1PROX_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B1PROX_SG_NC.
function BR1B1PROX_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B1PROX_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B1PROX_User, 1);


% --- Executes on button press in BR1B1PROX_SG_NO.
function BR1B1PROX_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1PROX_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B1DIST_User.
function BR1B1DIST_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1DIST_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B1DIST_SG_NC.
function BR1B1DIST_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B1DIST_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B1DIST_User, 1);


% --- Executes on button press in BR1B1DIST_SG_NO.
function BR1B1DIST_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1DIST_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B2PROX_User.
function BR1B2PROX_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2PROX_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2PROX_SG_NC.
function BR1B2PROX_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B2PROX_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B2PROX_User, 1);


% --- Executes on button press in BR1B2PROX_SG_NO.
function BR1B2PROX_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2PROX_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B2DIST_User.
function BR1B2DIST_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2DIST_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2DIST_SG_NC.
function BR1B2DIST_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B2DIST_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B2DIST_User, 1);


% --- Executes on button press in BR1B2DIST_SG_NO.
function BR1B2DIST_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2DIST_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR2B1L1_User.
function BR2B1L1_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L1_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B1L1_SG_NC.
function BR2B1L1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L1_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B1L1_User, 0);


% --- Executes on button press in BR2B1L1_SG_NO.
function BR2B1L1_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L1_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR2B1L2_User.
function BR2B1L2_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L2_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B1L2_SG_NC.
function BR2B1L2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L2_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B1L2_User, 0);

% --- Executes on button press in BR2B1L2_SG_NO.
function BR2B1L2_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L2_SG_NO'];
toggleNO(hObject,blockname);

% --- Executes on button press in BR2B1L3_User.
function BR2B1L3_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B1L3_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B1L3_SG_NC.
function BR2B1L3_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L3_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B1L3_User, 0);

% --- Executes on button press in BR2B1L3_SG_NO.
function BR2B1L3_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1L3_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR2B2L1_User.
function BR2B2L1_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L1_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B2L1_SG_NC.
function BR2B2L1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B2L1_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B2L1_User, 0);


% --- Executes on button press in BR2B2L1_SG_NO.
function BR2B2L1_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B2L1_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR2B2L2_User.
function BR2B2L2_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L2_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B2L2_SG_NC.
function BR2B2L2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B2L2_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B2L2_User, 0);


% --- Executes on button press in BR2B2L2_SG_NO.
function BR2B2L2_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B2L2_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR2B2L3_User.
function BR2B2L3_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR2B2L3_SG_NC.
function BR2B2L3_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR2B2L3_SG_NC' ];
toggleNC(hObject, blockname, handles.BR2B2L3_User, 0);


% --- Executes on button press in BR2B2L3_SG_NO.
function BR2B2L3_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L3_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B1L1_User.
function BR1B1L1_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L1_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B1L1_SG_NC.
function BR1B1L1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L1_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B1L1_User, 0);


% --- Executes on button press in BR1B1L1_SG_NO.
function BR1B1L1_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L1_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B1L2_User.
function BR1B1L2_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L2_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B1L2_SG_NC.
function BR1B1L2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L2_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B1L2_User, 0);


% --- Executes on button press in BR1B1L2_SG_NO.
function BR1B1L2_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L2_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B1L3_User.
function BR1B1L3_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B1L3_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B1L3_SG_NC.
function BR1B1L3_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L3_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B1L3_User, 0);


% --- Executes on button press in BR1B1L3_SG_NO.
function BR1B1L3_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1L3_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in pushbutton62.
function pushbutton62_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton62 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2L1_SG_NC.
function BR1B2L1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L1_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B2L1_User, 0);


% --- Executes on button press in BR1B2L1_SG_NO.
function BR1B2L1_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L1_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B2L2_User.
function BR1B2L2_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L2_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2L2_SG_NC.
function BR1B2L2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L2_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B2L2_User, 0);


% --- Executes on button press in BR1B2L2_SG_NO.
function BR1B2L2_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L2_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in BR1B2L3_User.
function BR1B2L3_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L3_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2L3_SG_NC.
function BR1B2L3_SG_NC_Callback(hObject, eventdata, handles)
blockname = [evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L3_SG_NC' ];
toggleNC(hObject, blockname, handles.BR1B2L3_User, 0);


% --- Executes on button press in BR1B2L3_SG_NO.
function BR1B2L3_SG_NO_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2L3_SG_NO'];
toggleNO(hObject,blockname);


% --- Executes on button press in pushbutton71.
function pushbutton71_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton71 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton72.
function pushbutton72_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton72 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC1_SG_NC.
function SRC1_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC1_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC1_User);

% --- Executes on button press in pushbutton74.
function pushbutton74_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton74 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC2_SG_NC.
function SRC2_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC2_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC2_User);


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC3_SG_NC.
function SRC3_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC3_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC3_User);


% --- Executes on button press in pushbutton80.
function pushbutton80_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC4_SG_NC.
function SRC4_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC4_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC4_User);


% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton84.
function pushbutton84_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC5_SG_NC.
function SRC5_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC5_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC5_User);


% --- Executes on button press in pushbutton86.
function pushbutton86_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton87.
function pushbutton87_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SRC6_SG_NC.
function SRC6_SG_NC_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/SRC6_SG_NC'];
toggleNC_SRC(hObject,blockname,handles.SRC6_User);


% --- Executes on button press in pushbutton89.
function pushbutton89_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton90.
function pushbutton90_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton91.
function pushbutton91_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton91 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton92.
function pushbutton92_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton93.
function pushbutton93_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton94.
function pushbutton94_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Bus1AConnButton.
function Bus1AConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);
        assignin('base','Source1ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus1ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0);
        assignin('base','Source2ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0);
        assignin('base','Source3ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0);
        assignin('base','Source4ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0);
        assignin('base','Source5ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0);
        assignin('base','Source6ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
end

% --- Executes on button press in Bus1BConnButton.
function Bus1BConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);
        assignin('base','Source1ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus1ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0);
        assignin('base','Source2ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0);
        assignin('base','Source3ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0);
        assignin('base','Source4ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0);
        assignin('base','Source5ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0);
        assignin('base','Source6ConnPoint',1);
        set(handles.Bus1AConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Bus1BConnButton,'CData',imread('Bus1ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus1ConnOccupied.png'));
    end
end


% --- Executes on button press in Bus2ConnButton.
function Bus2ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);        
        assignin('base','Source1ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus2ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0); 
        assignin('base','Source2ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0); 
        assignin('base','Source3ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus2ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0); 
        assignin('base','Source4ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus2ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0); 
        assignin('base','Source5ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus2ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0); 
        assignin('base','Source6ConnPoint',2);
        set(handles.Bus2ConnButton,'CData',imread('Bus2ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus2ConnOccupied.png'));
    end
end


% --- Executes on button press in Bus3ConnButton.
function Bus3ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);        
        assignin('base','Source1ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus3ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0); 
        assignin('base','Source2ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus3ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0); 
        assignin('base','Source3ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0); 
        assignin('base','Source4ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus3ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0); 
        assignin('base','Source5ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus3ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0); 
        assignin('base','Source6ConnPoint',3);
        set(handles.Bus3ConnButton,'CData',imread('Bus3ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus3ConnOccupied.png'));
    end
end

% --- Executes on button press in Bus4ConnButton.
function Bus4ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);        
        assignin('base','Source1ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus4ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0); 
        assignin('base','Source2ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus4ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0); 
        assignin('base','Source3ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus4ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0); 
        assignin('base','Source4ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0); 
        assignin('base','Source5ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus4ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0); 
        assignin('base','Source6ConnPoint',4);
        set(handles.Bus4ConnButton,'CData',imread('Bus4ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus4ConnOccupied.png'));
    end
end


% --- Executes on button press in Bus5ConnButton.
function Bus5ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1')
        assignin('base','Source1MatchPending',0);        
        assignin('base','Source1ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source1ConnButton,'CData',imread('Bus5ConnOccupied.png'));        
    end
    if evalin('base','Source2MatchPending == 1')
        assignin('base','Source2MatchPending',0); 
        assignin('base','Source2ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source2ConnButton,'CData',imread('Bus5ConnOccupied.png'));
    end
    if evalin('base','Source3MatchPending == 1')
        assignin('base','Source3MatchPending',0); 
        assignin('base','Source3ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source3ConnButton,'CData',imread('Bus5ConnOccupied.png'));
    end
    if evalin('base','Source4MatchPending == 1')
        assignin('base','Source4MatchPending',0); 
        assignin('base','Source4ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source4ConnButton,'CData',imread('Bus5ConnOccupied.png'));
    end
    if evalin('base','Source5MatchPending == 1')
        assignin('base','Source5MatchPending',0); 
        assignin('base','Source5ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
    end
    if evalin('base','Source6MatchPending == 1')
        assignin('base','Source6MatchPending',0); 
        assignin('base','Source6ConnPoint',5);
        set(handles.Bus5ConnButton,'CData',imread('Bus5ConnOccupied.png'));
        set(handles.Source6ConnButton,'CData',imread('Bus5ConnOccupied.png'));
    end
end


% --- Executes on button press in Source1ConnButton.
function Source1ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source1MatchPending == 1') == 1
        assignin('base','Source1MatchPending',0);
        assignin('base','Source1ConnPoint',0);
        set(handles.Source1ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source1MatchPending',1);
        set(handles.Source1ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end
    


% --- Executes on button press in Source2ConnButton.
function Source2ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source2MatchPending == 1') == 1
        assignin('base','Source2MatchPending',0);
        assignin('base','Source2ConnPoint',0);
        set(handles.Source2ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source2MatchPending',1); 
        set(handles.Source2ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end
    


% --- Executes on button press in Source3ConnButton.
function Source3ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source3MatchPending == 1') == 1
        assignin('base','Source3MatchPending',0);
        assignin('base','Source3ConnPoint',0);
        set(handles.Source3ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source3MatchPending',1);
        set(handles.Source3ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end

% --- Executes on button press in Source4ConnButton.
function Source4ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source4MatchPending == 1') == 1
        assignin('base','Source4MatchPending',0);
        assignin('base','Source4ConnPoint',0);
        set(handles.Source4ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source4MatchPending',1);
        set(handles.Source4ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end

% --- Executes on button press in Source5ConnButton.
function Source5ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source5MatchPending == 1') == 1
        assignin('base','Source5MatchPending',0);
        assignin('base','Source5ConnPoint',0);
        set(handles.Source5ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source5MatchPending',1);
        set(handles.Source5ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end

% --- Executes on button press in Source6ConnButton.
function Source6ConnButton_Callback(hObject, eventdata, handles)
if get(handles.ConfigureSourceBox,'Value') == 0
    if evalin('base','Source6MatchPending == 1') == 1
        assignin('base','Source6MatchPending',0);
        assignin('base','Source6ConnPoint',0);
        set(handles.Source6ConnButton,'CData',imread('NoConn.png'));
    else
        assignin('base','Source6MatchPending',1);
        set(handles.Source6ConnButton,'CData',imread('MatchPending.png'));
    end
    OccupancyCheck(handles);
end


% --- Executes on button press in ConfigureSourceBox.
function ConfigureSourceBox_Callback(hObject, eventdata, handles)
% hObject    handle to ConfigureSourceBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%used to determine when a bus is no longer occupied
function OccupancyCheck(handles)
Bus1Occupied = 0;
Bus2Occupied = 0;
Bus3Occupied = 0;
Bus4Occupied = 0;
Bus5Occupied = 0;

for i = 1:6
    switch(evalin('base',['Source' num2str(i) 'ConnPoint']))
        case 1
            Bus1Occupied = 1;
        case 2
            Bus2Occupied = 1;
        case 3
            Bus3Occupied = 1;
        case 4
            Bus4Occupied = 1;
        case 5
            Bus5Occupied = 1;
        otherwise
                        
    end
end

if Bus1Occupied == 0
    set(handles.Bus1AConnButton,'CData',imread('Bus1ConnEmpty.png'));
    set(handles.Bus1BConnButton,'CData',imread('Bus1ConnEmpty.png'));
end
if Bus2Occupied == 0
    set(handles.Bus2ConnButton,'CData',imread('Bus2ConnEmpty.png'));
end
if Bus3Occupied == 0
    set(handles.Bus3ConnButton,'CData',imread('Bus3ConnEmpty.png'));
end
if Bus4Occupied == 0
    set(handles.Bus4ConnButton,'CData',imread('Bus4ConnEmpty.png'));
end
if Bus5Occupied == 0
    set(handles.Bus5ConnButton,'CData',imread('Bus5ConnEmpty.png'));
end


% --- Executes on button press in Source1IconButton.
function Source1IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon1Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source1IconButton,'Cdata',imread(name));
    assignin('base','icon1Index',index);
else
    'Icons Locked!'
end

% --- Executes on button press in Source2IconButton.
function Source2IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon2Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source2IconButton,'Cdata',imread(name));
    assignin('base','icon2Index',index);
else
    'Icons Locked!'
end


% --- Executes on button press in Source3IconButton.
function Source3IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon3Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source3IconButton,'Cdata',imread(name));
    assignin('base','icon3Index',index);
else 
    'Icons Locked!'
end

% --- Executes on button press in Source4IconButton.
function Source4IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon4Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source4IconButton,'Cdata',imread(name));
    assignin('base','icon4Index',index);
else
    'Icons Locked!'
end

% --- Executes on button press in Source5IconButton.
function Source5IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon5Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source5IconButton,'Cdata',imread(name));
    assignin('base','icon5Index',index);
else
    'Icons Locked!'
end

% --- Executes on button press in Source6IconButton.
function Source6IconButton_Callback(hObject, eventdata, handles)
if get(handles.LockSourceIconBox,'Value') == 0
    index = evalin('base','icon6Index');
    index = index + 1;
    if index > evalin('base','length(iconList)')
        index = 1;
    end
    name = evalin('base',sprintf('iconList{%d}',index));
    set(handles.Source6IconButton,'Cdata',imread(name));
    assignin('base','icon6Index',index);
else
    'Icons Locked!'
end

% --- Executes on button press in LockSourceIconBox.
function LockSourceIconBox_Callback(hObject, eventdata, handles)
if get(hObject,'Value') == 1
    assignin('base','IconsLocked',1);
else
    assignin('base','IconsLocked',0);
end

% --- Executes on button press in LockLocations.
function LockLocations_Callback(hObject, eventdata, handles)
if get(hObject,'Value') == 1
    assignin('base','LocationsLocked',1);
else
    assignin('base','LocationsLocked',0);
end

% --- Executes on button press in MainFault.
function MainFault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/Main_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR2B1_Fault.
function BR2B1_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B1_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR2TIE1_Fault.
function BR2TIE1_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2TIE1_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR2B2_Fault.
function BR2B2_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2B2_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR1B1_Fault.
function BR1B1_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B1_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR1TIE1_Fault.
function BR1TIE1_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1TIE1_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR1B2_Fault.
function BR1B2_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1B2_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR2TIE2_Fault.
function BR2TIE2_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR2TIE2_Fault'];
toggleFault(hObject,blockname);

% --- Executes on button press in BR1TIE2_Fault.
function BR1TIE2_Fault_Callback(hObject, eventdata, handles)
blockname = [ evalin('base','modelname') '/' evalin('base','subname') '/BR1TIE2_Fault'];
toggleFault(hObject,blockname);

function toggleNO(hObject,blockname)
if get(hObject,'Value') == 1
    try
        set_param(blockname,'Value','1');
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName');
            'maybe the model isn''t open'
        else
            'panic'
        end
    end
    set(hObject,'CData',imread('NOclosed.png'));
else
    try
        set_param(blockname,'Value','0');
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName');
            'maybe the model isn''t open'
        else
            'panic'
        end
    end
    set(hObject,'CData',imread('NOopen.png'));
end

function toggleFault(hObject,blockname)
if get(hObject,'Value') == 1
    try
        set_param(blockname,'Value','1');        
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName');
            'maybe the model isn''t open'
        else
            'panic'
        end
    end
    set(hObject,'CData',imread('Fault.png'));
else
    try
        set_param(blockname,'Value','0');        
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName')
            'maybe the model isn''t open'
        else
            'panic'
        end
    end    
    set(hObject,'CData',imread('NoFault.png'));
end

function toggleNC(hObject,blockname,associatedUserObject,userNC)
if get(hObject,'Value') == 1
    try
        set_param(blockname,'Value','1');
    catch
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName')
            'maybe the model isn''t open'
        else
            'panic'
        end
    end    
    set(hObject,'CData',imread('NCopen.png'));
else
    try
        set_param(blockname,'Value','0');
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName')
            'maybe the model isn''t open'
        else
            'panic'
        end
    end
    if get(associatedUserObject,'Value') == 0
        if userNC
            set(hObject,'CData',imread('NCclosedpassing.png'));
        else
            set(hObject,'CData',imread('NCclosedUseropen.png'));
        end
    else get(associatedUserObject,'Value') == 1
        if userNC
            set(hObject,'CData',imread('NCclosedUseropen.png'));
        else
            set(hObject,'CData',imread('NCclosedpassing.png'));
        end
    end    
end

function toggleNC_SRC(hObject,blockname,associatedUserObject)
if get(hObject,'Value') == 1
    try
        set_param(blockname,'Value','1');
    catch
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName')
            'maybe the model isn''t open'
        else
            'panic'
        end
    end    
    set(hObject,'CData',imread('NCSRCopen.png'));
else
    try
        set_param(blockname,'Value','0');
    catch err
        if strcmp(err.identifier,'Simulink:Commands:InvSimulinkObjectName')
            'maybe the model isn''t open'
        else
            'panic'
        end
    end
    if get(associatedUserObject,'Value') == 0
        set(hObject,'CData',imread('NCSRCclosedUseropen.png'));
    else get(associatedUserObject,'Value') == 1
        set(hObject,'CData',imread('NCSRCclosedpassing.png'));       
    end    
end

% --- Executes on key press with focus on BR2B2L3_SG_NC and none of its controls.
function BR2B2L3_SG_NC_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to BR2B2L3_SG_NC (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in BR1B2L1_User.
function BR1B2L1_User_Callback(hObject, eventdata, handles)
% hObject    handle to BR1B2L1_User (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of BR1B2L1_User

function GUIScope(block,eventData)
%get GUIhandles
h = evalin('base','GUIhandle');

%read data from Simulink model
now = block.currentTime;
BR1B1L1_Current = min(block.InputPort(1).Data);
BR1B1L2_Current = min(block.InputPort(2).Data);
BR1B1L3_Current = min(block.InputPort(3).Data);
BR1B2L1_Current = min(block.InputPort(4).Data);
BR1B2L2_Current = min(block.InputPort(5).Data);
BR1B2L3_Current = min(block.InputPort(6).Data);
BR2B1L1_Current = min(block.InputPort(7).Data);
BR2B1L2_Current = min(block.InputPort(8).Data);
BR2B1L3_Current = min(block.InputPort(9).Data);
BR2B2L1_Current = min(block.InputPort(10).Data);
BR2B2L2_Current = min(block.InputPort(11).Data);
BR2B2L3_Current = min(block.InputPort(12).Data);
BR1B1_Current = min(block.InputPort(13).Data);
BR1B2_Current = min(block.InputPort(14).Data);
BR2B1_Current = min(block.InputPort(15).Data);
BR2B2_Current = min(block.InputPort(16).Data);
TIE1_Current = min(block.InputPort(17).Data);
TIE2_Current = min(block.InputPort(18).Data);
BR1B1_Voltage = min(block.InputPort(19).Data);
BR1B2_Voltage = min(block.InputPort(20).Data);
BR2B1_Voltage = min(block.InputPort(21).Data);
BR2B2_Voltage = min(block.InputPort(22).Data);
Main_Voltage = min(block.InputPort(23).Data);
SRC1Unreg_Current = min(block.InputPort(24).Data):
SRC1Unreg_Voltage = min(block.InputPort(25).Data);
SRC1Reg_Current = min(block.InputPort(26).Data);
SRC1Reg_Voltage = min(block.InputPort(27).Data);
SRC2Unreg_Current = min(block.InputPort(28).Data):
SRC2Unreg_Voltage = min(block.InputPort(29).Data);
SRC2Reg_Current = min(block.InputPort(30).Data);
SRC2Reg_Voltage = min(block.InputPort(31).Data);
SRC3Unreg_Current = min(block.InputPort(32).Data):
SRC3Unreg_Voltage = min(block.InputPort(33).Data);
SRC3Reg_Current = min(block.InputPort(34).Data);
SRC3Reg_Voltage = min(block.InputPort(35).Data);
SRC4Unreg_Current = min(block.InputPort(36).Data):
SRC4Unreg_Voltage = min(block.InputPort(37).Data);
SRC4Reg_Current = min(block.InputPort(38).Data);
SRC4Reg_Voltage = min(block.InputPort(39).Data);
SRC5Unreg_Current = min(block.InputPort(40).Data):
SRC5Unreg_Voltage = min(block.InputPort(41).Data);
SRC5Reg_Current = min(block.InputPort(42).Data);
SRC5Reg_Voltage = min(block.InputPort(43).Data);
SRC6Unreg_Current = min(block.InputPort(44).Data):
SRC6Unreg_Voltage = min(block.InputPort(45).Data);
SRC6Reg_Current = min(block.InputPort(46).Data);
SRC6Reg_Voltage = min(block.InputPort(47).Data);
BR1B1L1_User = min(block.InputPort(48).Data);
BR1B1L2_User = min(block.InputPort(49).Data);
BR1B1L3_User = min(block.InputPort(50).Data);
BR1B2L1_User = min(block.InputPort(51).Data);
BR1B2L2_User = min(block.InputPort(52).Data);
BR1B2L3_User = min(block.InputPort(53).Data);
BR2B1L1_User = min(block.InputPort(54).Data);
BR2B1L2_User = min(block.InputPort(55).Data);
BR2B1L3_User = min(block.InputPort(56).Data);
BR2B2L1_User = min(block.InputPort(57).Data);
BR2B2L2_User = min(block.InputPort(58).Data);
BR2B2L3_User = min(block.InputPort(59).Data);
BR1B1PROX_User = min(block.InputPort(60).Data);
BR1B2PROX_User = min(block.InputPort(61).Data);
BR2B1PROX_User = min(block.InputPort(62).Data);
BR2B2PROX_User = min(block.InputPort(63).Data);
BR1B1DIST_User = min(block.InputPort(64).Data);
BR1B2DIST_User = min(block.InputPort(65).Data);
BR2B1DIST_User = min(block.InputPort(66).Data);
BR2B2DIST_User = min(block.InputPort(67).Data);
TIE1_User = min(block.InputPort(68).Data);
TIE2_User = min(block.InputPort(69).Data);
SRC1_User = min(block.InputPort(70).Data;
SRC2_User = min(block.InputPort(71).Data;
SRC3_User = min(block.InputPort(72).Data;
SRC4_User = min(block.InputPort(73).Data;
SRC5_User = min(block.InputPort(74).Data;
SRC6_User = min(block.InputPort(75).Data;


%update data display fields on GUI
set(h.BR1B1L1_Current,'String',num2str(BR1B1L1_Current));
set(h.BR1B1L2_Current,'String',num2str(BR1B1L2_Current));
set(h.BR1B1L3_Current,'String',num2str(BR1B1L3_Current));
set(h.BR1B2L1_Current,'String',num2str(BR1B2L1_Current));
set(h.BR1B2L2_Current,'String',num2str(BR1B2L2_Current));
set(h.BR1B2L3_Current,'String',num2str(BR1B2L3_Current));
set(h.BR2B1L1_Current,'String',num2str(BR2B1L1_Current));
set(h.BR2B1L2_Current,'String',num2str(BR2B1L2_Current));
set(h.BR2B1L3_Current,'String',num2str(BR2B1L3_Current));
set(h.BR2B2L1_Current,'String',num2str(BR2B2L1_Current));
set(h.BR2B2L2_Current,'String',num2str(BR2B2L2_Current));
set(h.BR2B2L3_Current,'String',num2str(BR2B2L3_Current));
set(h.BR1B1_Current,'String',num2str(BR1B1_Current));
set(h.BR1B2_Current,'String',num2str(BR1B2_Current));
set(h.BR2B1_Current,'String',num2str(BR2B1_Current));
set(h.BR2B2_Current,'String',num2str(BR2B2_Current));
set(h.TIE1_Current,'String',num2str(TIE1_Current));
set(h.TIE2_Current,'String',num2str(TIE2_Current));
set(h.BR1B1_Voltage,'String',num2str(BR1B1_Voltage));
set(h.BR1B2_Voltage,'String',num2str(BR1B2_Voltage));
set(h.BR2B1_Voltage,'String',num2str(BR2B1_Voltage));
set(h.BR2B2_Voltage,'String',num2str(BR2B2_Voltage));
set(h.Main_Voltage,'String',num2str(Main_Voltage));
set(h.SRC1Unreg_Current,'String',num2str(SRC1Unreg_Current));
set(h.SRC1Unreg_Voltage,'String',num2str(SRC1Unreg_Voltage));
set(h.SRC1Reg_Current,'String',num2str(SRC1Reg_Current));
set(h.SRC1Reg_Voltage,'String',num2str(SRC1Reg_Voltage));
set(h.SRC2Unreg_Current,'String',num2str(SRC2Unreg_Current));
set(h.SRC2Unreg_Voltage,'String',num2str(SRC2Unreg_Voltage));
set(h.SRC2Reg_Current,'String',num2str(SRC2Reg_Current));
set(h.SRC2Reg_Voltage,'String',num2str(SRC2Reg_Voltage));
set(h.SRC3Unreg_Current,'String',num2str(SRC3Unreg_Current));
set(h.SRC3Unreg_Voltage,'String',num2str(SRC3Unreg_Voltage));
set(h.SRC3Reg_Current,'String',num2str(SRC3Reg_Current));
set(h.SRC3Reg_Voltage,'String',num2str(SRC3Reg_Voltage));
set(h.SRC4Unreg_Current,'String',num2str(SRC4Unreg_Current));
set(h.SRC4Unreg_Voltage,'String',num2str(SRC4Unreg_Voltage));
set(h.SRC4Reg_Current,'String',num2str(SRC4Reg_Current));
set(h.SRC4Reg_Voltage,'String',num2str(SRC4Reg_Voltage));
set(h.SRC5Unreg_Current,'String',num2str(SRC5Unreg_Current));
set(h.SRC5Unreg_Voltage,'String',num2str(SRC5Unreg_Voltage));
set(h.SRC5Reg_Current,'String',num2str(SRC5Reg_Current));
set(h.SRC5Reg_Voltage,'String',num2str(SRC5Reg_Voltage));
set(h.SRC6Unreg_Current,'String',num2str(SRC6Unreg_Current));
set(h.SRC6Unreg_Voltage,'String',num2str(SRC6Unreg_Voltage));
set(h.SRC6Reg_Current,'String',num2str(SRC6Reg_Current));
set(h.SRC6Reg_Voltage,'String',num2str(SRC6Reg_Voltage));

%adjust graphics based on data
if BR1B1L1_User == 1
    if get(h.BR1B1L1_User,'Value') == 0
        if get(h.BR1B1L1_SG_NC,'Value') == 1
            set(h.BR1B1LI_SG_NC,'CData',imread('NCclosedpassing.png'));
        else
            set(h.BR1B1L1_SG_NC,'CData',imread('NCopen.png'));
        end
        set(h.BR1B1L1_User,'CData',imread('Userclosedpassing.png'));
        set(h.BR1B1L1_User,'Value', 1);
    end
else
    if get(h.BR1B1L1_User,'Value') == 1
        set(h.BR1B1LI_SG_NC,'CData',imread('NCclosedUseropen.png'));
        set(h.BR1B1L1_User,'CData',imread('Useropen.png'));
        set(h.BR1B1L1_User,'Value', 0);
    end
end


